function [image1]=PointDetection(img)

image=double(img);
filter = [-1 -1 -1;-1 8 -1;-1 -1 -1];
image1 = imfilter(image , filter);
image1 = uint8(image1);
image2=image1+img;
imshow(image2);
end
