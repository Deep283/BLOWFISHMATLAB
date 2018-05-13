function [ dec8 ] = convert8( dec64 )
    p = 0;
    dec8 = [0,0,0,0,0,0,0,0];
    for i = 8:-1:1
        dec8(i) = bitand(bitshift(dec64,p),hex2dec('000000FF'));
        p = p - 8;
    end
end

