function [] = in_LOG_EXP(image)

[H ,W, L]=size(image);
result=zeros(H,W);
image=im2double(image);
result=im2double(result);
if L==1
 for i=1:H
    for j=1:W
        result(i,j)=exp(image(i,j)).^(1/2)-1;
    end 
 end
image=im2uint8(image);
result=im2uint8(result);
imshow(result); 
else
    for i=1:H
    for j=1:W
        result(i,j,1)=exp(image(i,j,1)).^(1/2)-1;
        result(i,j,2)=exp(image(i,j,2)).^(1/2)-1;
        result(i,j,3)=exp(image(i,j,3)).^(1/2)-1;
    end 
 end
image=im2uint8(image);
result=im2uint8(result);
imshow(result);
end


