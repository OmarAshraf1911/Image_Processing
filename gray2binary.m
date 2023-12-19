% GRAY TO BINARY
function [binary] = gray2bin(gray)
[H , W,L]=size(gray);
if L==3
gray=rgb2gray(gray);
[H , W]=size(gray);
binary=zeros(H,W);
for i=1:H
    for j=1:W
        if gray(i,j)>=128
            binary(i,j)=1;
        else
            binary(i,j)=0;
        end
    end


end
binary=logical(binary);
else
   [H , W]=size(gray);
binary=zeros(H,W);
for i=1:H
    for j=1:W
        if gray(i,j)>=128
            binary(i,j)=1;
        else
            binary(i,j)=0;
        end
    end


end
binary=logical(binary); 
end
