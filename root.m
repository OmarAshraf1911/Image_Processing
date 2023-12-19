function [result] = root(image)

[H, W, L]=size(image);
result=zeros(H,W,L);
image=im2double(image);
result=im2double(result);
for i = 1 : H
    for j = 1 : W
         if L==3
               result(i,j,1)=sqrt(image(i,j,1));
               result(i,j,2)=sqrt(image(i,j,2));
               result(i,j,3)=sqrt(image(i,j,3));
           else
               result(i,j)=sqrt(image(i,j));
        end
    end
end

image=im2uint8(image);
result=im2uint8(result);

end

