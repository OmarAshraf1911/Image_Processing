function [new_img] = contrast(img,new_min,new_max)
old_min=min(min(img));
old_max=max(max(img));
[h,w,l]=size(img);
new_img=zeros(h,w,l);
new_img=double(new_img);
for i=1:h
    for j=1:w
        new_img=(((img(i,j)-old_min)/(old_max-old_min))*(new_max-new_min))+new_min;
    end
end
new_img=uint8(new_img);
figure,imshow(new_img);
end


