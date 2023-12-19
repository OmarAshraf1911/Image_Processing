function [out]=HistogramEqualization(img)
[r,c]=size(img);
f = zeros(1,256);
pdf = zeros(1,256);
cdf = zeros(1,256);
out= zeros(1,256);
n = r*c;

for i = 1 : r 
    for b = 1 : c 
        f(img(i,b)+1)=f(img(i,b)+1)+1;
        pdf(img(i,b)+1)=f(img(i,b)+1)/n;
    end
end

sum=0;L=255;
for i = 1 : 256
    sum = sum + pdf(i);
    cdf(i) = sum;
    out(i)=round(cdf(i)*L);
end
out=bar(out);
end