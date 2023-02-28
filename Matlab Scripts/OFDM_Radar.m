clc;
clear;
Nper=4096;
Mper=4096;
DMax=30;
VMax=300;
Sample_rate=56e6;
t = tcpclient('192.168.1.136',8001,'Timeout',99);
TCP_set_gain(t,40);
for i=1:20
    M = 16;      % Modulation order (alphabet size or number of points in signal constellation)
    n = 1024-9;   % Number of data carriers per OFDM symbol
    N_symbol = 100; % Number of OFDM symbols
    pilot_indices = [101;213;357;469;557;669;813;925]; % pilot index
    pilot_value = [1;1;1;-1;-1;1;1;1]; % pilot value
    rng default;
    dataSymbolsIn = randi([0 M-1],n,N_symbol); % Generate vector of binary data
    dataQAM = qammod(dataSymbolsIn,M,'bin'); % Natural-encoded binary
    pilot_in=repmat(pilot_value,1,N_symbol);
    data_index=1;
    pilot_index=1;
    OFDM_data=zeros(1024,100);
    for j = 1:1024
        if(ismember(j,pilot_indices))
            OFDM_data(j,:)=pilot_in(pilot_index,:);
            pilot_index=pilot_index+1;
        else 
            if(j==513)
                OFDM_data(j,:)=0;
            else
                OFDM_data(j,:)=dataQAM(data_index,:);
                data_index=data_index+1;
            end
        end
    end
    
    hMod = comm.OFDMModulator('FFTLength',1024,'NumGuardBandCarriers',[0;0],'CyclicPrefixLength',256,'PilotInputPort',false,'InsertDCNull',false,'NumSymbols',N_symbol);
    demod = comm.OFDMDemodulator(hMod);
    % showResourceMapping(hMod);
    % info(hMod)
    modData = hMod(OFDM_data);
    %modulation ends
    modData_cint16=int16((modData./max(abs(modData)))*2^15);
    modData_uint32=zeros(size(modData_cint16),'uint32');
    for j=1:size(modData_cint16)
        modData_uint32(j)=typecast([real(modData_cint16(j)),imag(modData_cint16(j))],'uint32');
    end
    
    modData_recv=TCP_send_receive(t,modData_uint32);
    % %simulate received signal starts
    % modData_temp = [zeros(10,1);modData];
    % t = (1:size(modData_temp)).';
    % freq_shift_carrier = exp(1j*2*pi*(1E-4)*t);
    % modData_temp = modData_temp.*freq_shift_carrier;
    % modData_recv = modData_temp(1:size(modData,1));
    % %simulate received signal ends
    
    %Radar signal processing starts
    demodData = demod(modData_recv);
    demodData = ifftshift(demodData);
    OFDM_data = ifftshift(OFDM_data);
    OFDM_data(1,:) = 1;
    per_temp=(demodData./OFDM_data);
%    w = tukeywin(size(per_temp,1),0.2)*tukeywin(size(per_temp,2),0.2)';
    w = hamming(size(per_temp,1))*hamming(size(per_temp,2))';
    per_temp=per_temp.*w;
    per_temp1=zeros(Nper,N_symbol);
    per_temp2=zeros(Nper,Mper);
    for j=1:N_symbol
        per_temp1(:,j) = ifft([per_temp(:,j);zeros(Nper-1024,1)]);
    end
    for j=1:Nper
        per_temp2(j,:) = fft([per_temp1(j,:),zeros(1,Mper-N_symbol)])./Mper;
    end
    per = abs(per_temp2).*abs(per_temp2);
    per_shift = fftshift(per,2);
    radarout = per_shift;
    Y=0:Nper-1;
    X=-Mper/2:Mper/2-1;
    TO=1280/Sample_rate;
    deltaF=Sample_rate/1024;
    V=(X.*3e8*3.6)./(2*2.3e9*Mper*TO);%km/h
    D=(Y.*3e8)./(Nper*2*deltaF);
    figure(1)
    mesh(V(Mper/2-1-VMax:Mper/2-1+VMax),D(1:DMax),per_shift(1:DMax,Mper/2-1-VMax:Mper/2-1+VMax));
    ylabel('Distance/m')
    xlabel('Speed/km*h^-1')
    zlabel('Per')
    view(2)
    figure(2)
    %Radar signal processing ends
    plot(real(modData_recv))
end
write(t,[0xAA;0xAE]);
flush(t,"output");
clear t