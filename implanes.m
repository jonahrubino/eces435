function im = implanes(image)
image = double(image);
p1 = bitget(image,1)*1;
p2 = bitget(image,2)*2;
p3 = bitget(image,3)*4;
p4 = bitget(image,4)*8;
p5 = bitget(image,5)*16;
p6 = bitget(image,6)*32;
p7 = bitget(image,7)*64;
p8 = bitget(image,8)*128;


figure(1) 
imshow(p1)
title('Bit Plane 1');
figure(2)
imshow(p2)
title('Bit Plane 2');
figure(3)
imshow(p3)
title('Bit Plane 3');
figure(4)
imshow(p4)
title('Bit Plane 4');
figure(5)
imshow(p5)
title('Bit Plane 5');
figure(6)
imshow(p6) 
title('Bit Plane 6');
figure(7)
imshow(p7)
title('Bit Plane 7');
figure(8)
imshow(p8)
title('Bit Plane 8');

im = cat(8, p1, p2, p3 ,p4, p5, p6, p7, p8);