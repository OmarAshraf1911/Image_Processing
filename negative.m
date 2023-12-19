function [out_img] = negative( img)
[r,c]=size(img);
for i =1:r
    for j=1:c
     img(i,j)=255-img(i,j);
        
    end
       
end
 out_img=img;
end


