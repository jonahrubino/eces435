%This is the jpeg-like encoder function
%Jonah Rubino, Yoni Carver
function enco = jpg_encoder(x,Q) % Function takes 2 imputs, x is the image, Q is the Quntization table

x = double(x); %Converts to image to double
[r,c] = size(x);% Size of the image

r = r/64;
c = c/64;

blocks= reshape(x,8,8, []); %reorders the image pixel values into 8x8 blocks

cost = dct(blocks); %takes the discrete cosine transform of the pixel values

qcoe = round (cost ./ Q); %quantizes each block with a user specified Qunatization table

onedim = ZigzagMtx2Vector(qcoe); %reorders each block into a one-dimensional sequnece

enco = JPEG_entropy_encode(r,c,8,Q, onedim,'C:\Users\Jonah\Documents\MATLAB',0); %encodes the sequence of quantized DCT coeffcients


