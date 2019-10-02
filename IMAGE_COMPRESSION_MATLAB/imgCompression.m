function image=imgCompression(x)

%reading the image
originalImage=imread(x);

%get the number of pixels
[rows,columns] = size(originalImage);

Number_Pixels = rows*columns;

copyofImage=originalImage; %copy of A

%get the row and col size
rowSize=size(copyofImage,1);
colSize=size(copyofImage,2);

%subtract the bytes from the image
s=int16(copyofImage)-128; %level shifting
DCT=[];
quantized=[];
count=1;


blockSize=input('Enter 8 ---> 8X8 ||||| 16 ---> 16X16 : ')
jump=0;
zigzagcount=0;
if blockSize==8
    jump=7;
    zigzagcount=64;
    printLimit=8;
else
    jump=15;
    zigzagcount=256;
    printLimit=16;
end

%Encoding

for i=1:blockSize:rowSize
     for j=1:blockSize:colSize 
        %performing the DCT
        DCT(i:i+jump,j:j+jump) = dct2(s(i:i+jump,j:j+jump));
        %performing the quantization
        quantized(i:i+jump,j:j+jump)=Quantization(DCT(i:i+jump,j:j+jump),blockSize);
        z(count,1:zigzagcount)=zigzag(quantized(i:i+jump,j:j+jump));
        count=count+1;
     end
end
disp('Original Image');
copyofImage(1:printLimit,1:printLimit);
disp('After Shifting');
s(1:printLimit,1:printLimit);
disp('After Applying DCT');
DCT(1:printLimit,1:printLimit); 
disp('After Quantization');
quantized(1:printLimit,1:printLimit);
z(1,1:zigzagcount);

%-------------------------------------------------------------------------------------------------------------


%Decoding

DCTNew=[]; 
ImageNew=[];


for i=1:blockSize:rowSize
     for j=1:blockSize:colSize 
        %Inverse of quantization
        DCTNew(i:i+jump,j:j+jump)=inverseQuantization(quantized(i:i+jump,j:j+jump),blockSize);
        %performing the inverse DCT
        ImageNew(i:i+jump,j:j+jump) = round(idct2(DCTNew(i:i+jump,j:j+jump)));
     end
end

image=ImageNew+128; %shifting

image=uint8(image);


%subplot(1,2,1)
%imshow(originalImage)
%title('Original Image')
%subplot(1,2,2)
imshow(image)
%title('Compressed Image')
%disp('Mean Squared Error')
Error=abs(sum(sum(imsubtract(originalImage,image).^2)))/Number_Pixels %MSE

end



        
