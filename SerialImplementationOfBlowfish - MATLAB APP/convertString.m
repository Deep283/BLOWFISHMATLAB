function [dec64] = convertString(data,n)
    base64 = org.apache.commons.codec.binary.Base64();
    if n == 1
       dec8 = int16(base64.encode(uint8(data))');
    else
       dec8 = int16(base64.decode(uint8(data))');
    end
    for i = 1:length(dec8)
        if dec8(i) < 0
            dec8(i) = dec8(i) + 256;
        end
    end
    j=1;
    for i = 1:16:length(dec8)
        dec64(j) = convert64(dec8(i:i+7));
        dec64(j+1) = convert64(dec8(i+8:i+15));
        j = j+2;
    end
end