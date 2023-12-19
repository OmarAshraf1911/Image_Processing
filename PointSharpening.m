function [output_image]=PointSharpening(img)

filtter=[ 0 -1 0;-1 5 -1;0 -1 0 ]; 
[h,w,l] =size(img);
[fh,fw] = size(filtter);
NImg=zeros(h,w,l);
FImg=zeros(h+2,w+2,l);
for k=1:l
for i=1:h
    for j=1:w
        FImg(i+1,j+1,k)=img(i,j,k);
    end
end
end
m = zeros(fh,fw);
for k=1:l
for i=1:h
    for j=1:w
        m = FImg(i:i+fh-1, j:j+fh-1,k);
        NImg(i,j,k) = sum(sum(m .* filtter));
    end
end
end
output_image=uint8(NImg);
imshow(output_image);
end