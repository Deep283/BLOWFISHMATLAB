objBF = Blowfish();
key = [151,160,250,232];
datal = 'Deep';
datar = 'Mack';
tic
objBF.InitializeBlowfish(key,4);
t1 = toc;
disp(t1);
tic
[xl,xr] = objBF.Blowfish_encipher(str2dec(datal),str2dec(datar));
t2 = toc;
disp(t2);
dec2str(xl)
dec2str(xr)
tic
[xxl,xxr] = objBF.Blowfish_decipher(xl,xr);
t3 = toc;
disp(t3);
dec2str(xxl)
dec2str(xxr)