function [ gg ] = rgb2grey( I,o )
[W,H,l]=size(I);

for i=1:W
    for j=1:H
        for k=1:l
        if o==1
        gg(i,j,k)=I(i,j,1);
        end
        if o==2        
        gg(i,j,k)=(I(i,j,1)+I(i,j,2)+I(i,j,3))/3;
        end
        if o==3
        gg(i,j,k)=I(i,j,1)*.1+I(i,j,2)*.2+I(i,j,3)*.3;
        end
        end
    end
end
end
