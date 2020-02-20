%Jonah Rubino and Yoni Carver
%The purpose of this code is to hide the N most significant bits of one
%image with the N least significant bits of another image
function replace = hidden(image1, image2, N)

%This function takes an input of 2 images and N, where image 1 is the image
%who's information will be replaced, and N is the number of bit planes
%transfered

image1 = double(image1); %makes the first image a double 
image2 = double(image2); %makes the second image a double

p1 = [];
p2 = [];

[r1,c1]=size(image1);

for Z= 1:8
  for Q=1:r1
      for W=1:c1
          p1(Q,W,Z)=bitget(image1(Q,W),Z); %gets the bit plane for the first image, where each Z value for p1 represents a 512 x 512 bit plane
      end
  end
end

[r2 c2] = size(image2);

for T= 1:8
  for Y=1:r2
      for P=1:c2
          p2(Y,P,T)=bitget(image2(Y,P),T); %gets the bit plane for the second image, where each T value for p2 represents a 512 x 512 bit plane
      end
  end
end

for B = N:-1:1
    math = 8+1-B; %place holder to match the bit planes correctly
    p1(:,:,B) = p2(:,:,math); %replaces the N least sigficant bit planes of image 1 with the N most significant bit planes of image 2
end

calc = 0;
for ii = 1:8
    calc = calc+ p1(:,:,ii)*(2^(ii-1)); %puts the image back together
end

replace = uint8(calc); %returns image in proper type