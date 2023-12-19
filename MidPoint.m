function [ ] = MidPoint(img)

[r,c,l]=size(img);
if l==1
noisy_img=imnoise(img,'gaussian');
%figure,imshow(noisy_img);
img=padarray(img,[1,1]);
[r,c]=size(img);
 
for i=2:r-1
    for j=2:c-1
        out=img(i-1:i+1,j-1:j+1);
       a=max(out(:));
       b=min(out(:));
        outimage(i,j)=(a+b)/2;
    end
end
u=outimage;
imshow(u);
else
  
noisy_img=imnoise(img,'gaussian');
imshow(noisy_img);
img=padarray(img,[1,1]);
[r,c,l]=size(img);
 for k=1:3
 for i=2:r-1
    for j=2:c-1
        out=img(i-1:i+1,j-1:j+1,k);
        a=max(out(:));
        b=min(out(:));
        outimage(i,j,k)=(a+b)/2;
    end
    end
 end
imshow(outimage);
end
end

