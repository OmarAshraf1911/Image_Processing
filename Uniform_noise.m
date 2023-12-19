function [new_img] = Uniform_noise(img,a,b)
img=double(img);
new_img = img;
[h w l] = size(img);
nom_of_pixel=round((1/(b-a))*w*h);
for i=1:255
   for x=1:nom_of_pixel
       row=ceil(rand(1,1)*h);
       colom=ceil(rand(1,1)*w);
       img(row,colom)=img(row,colom)+i;
   end 
end
for k=1:1
    mn=min(min(img(:,:,k)));
    mx=max(min(img(:,:,k)));
    new_img(:,:,k)=((img(:,:,k)-mn)/(mx-mn))*255;

end   
new_img=uint8(new_img);
end