function recv_sig = TCP_set_gain(t,gain)
write(t,[0xAA;0xAD;uint8(gain)]);
end