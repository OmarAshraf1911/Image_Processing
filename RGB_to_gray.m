function [ gray ] = RGB_to_gray( i_rgb,index )
[H, W , L] = size(i_rgb);
gray = zeros(H,W);
gray = double(gray);
for i = 1: H
    for j = 1: W
        if index == 1
            gray(i,j)= (i_rgb(i,j,1)+ i_rgb(i,j,2) + i_rgb(i,j,3))/3;
        end
    end
end
            
gray = uint8(gray);
imshow(gray);
            
end

