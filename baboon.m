ref = imread('baboon.tif');

imwrite(ref,'baboon90.jpg','Quality',90);
imwrite(ref,'baboon70.jpg','Quality',70);
imwrite(ref,'baboon50.jpg','Quality',50);
imwrite(ref,'baboon30.jpg','Quality',30);
imwrite(ref,'baboon10.jpg','Quality',10);

bab90 = imread('baboon90');
peak90 = psnr(bab90,ref);

bab70 = imread('baboon70');
peak70 = psnr(bab70,ref);

bab50= imread('baboon50');
peak50 = psnr(bab50,ref);

bab30 = imread('baboon30');
peak30 = psnr(bab30,ref);

bab10 = imread('baboon10');
peak10 = psnr(bab10,ref);