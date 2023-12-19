function [] = histogram(img)
[h,w,l]=size(img);
histo=zeros(256,1);
for i=1:h
    for j=1:w
        histo(img(i,j)+1)=histo(img(i,j)+1)+1;
    end
end
bar(histo);
end

