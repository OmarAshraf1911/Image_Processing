function [h]=exp_noise(img,a)
[w,h2,l2]=size(img);
new_image=img;
%figure,imshow(I);  
for k=1:l2
for i=1:255
    ns=a*exp(-a*i);
    for j=0:ns
    x=randi(w,1);
    y=randi(h2,1);
    new_image(x,y,k)=img(x,y,k)+i;
    end
end
end
h=uint8(new_image);
imshow(h);
end

