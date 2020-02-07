ref = imread('peppers.tif');

imwrite(ref,'peppers90.jpg','Quality',90);
imwrite(ref,'peppers70.jpg','Quality',70);
imwrite(ref,'peppers50.jpg','Quality',50);
imwrite(ref,'peppers30.jpg','Quality',30);
imwrite(ref,'peppers10.jpg','Quality',10);

pep90 = imread('peppers90');
peak90 = psnr(pep90,ref);

pep70 = imread('pepeprs70');
peak70 = psnr(pep70,ref);

pep50= imread('peppers50');
peak50 = psnr(pep50,ref);

pep30 = imread('pepeprs30');
peak30 = psnr(pep30,ref);

pep10 = imread('pepeprs10');
peak10 = psnr(pep10,ref);
