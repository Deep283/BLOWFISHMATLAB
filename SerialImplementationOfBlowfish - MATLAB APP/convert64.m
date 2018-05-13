function [ dec64 ] = convert64( dec8 )
    dec64 = uint64(dec8(1));
    for i = 2:8
        dec64 = bitor(bitshift(dec64,8),uint64(dec8(i)));
    end
end

