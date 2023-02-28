function recv_sig = TCP_send_receive(t,send_sig,N)

% t = tcpclient('192.168.1.136',8001,'Timeout',99);
% write(t,[0xAA;0xAD;uint8(gain)]);
write(t,[0xAA;0xAF;typecast([uint32(size(send_sig,1));send_sig],'uint8')]);
recv_data = read(t,1280*N+1280,"uint32");
for i = 1:size(recv_data,2)
   int16_2=typecast(recv_data(i),'int16');
   recv_complex(i)=double(int16_2(1))+double(int16_2(2))*1j;
end
recv_sig=recv_complex(45:1280*N+44).';
% write(t,[0xAA;0xAE]);
% flush(t,"output");
% clear t
end