%This is the jpeg-like decoder function
%Jonah Rubino, Yoni Carver

function deco = jpg_decoder(x,Q,rows,columns) % Function takes 4 imputs, 
%x is the encoded sequence of quantized DCT coefficients, Q is the
%Quantization table, rows is the row size of the original image, columns is
%the column size of the original image
inv_enco = JPEG_entropy_decode(x); % decodes the previously encoded sequence
inv_onedim = Vector2ZigzagMtx(inv_enco); %Recreates the matrix from the zig_zag read one
inv_q = round(inv_onedim .* Q); %Multiplies by the user inputted qauntization table
inv_dct = idct(inv_q); % Performs the inverse DCT on the un-quantized values
sh = reshape(inv_dct,rows,columns,1); %reshapes the matrix back to the original size
deco = uint8(sh); %converts the matrix back into the type it of unsigned 8-bit integer  