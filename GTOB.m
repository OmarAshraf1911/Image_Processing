function [ A ] = GTOB(  i,t )
[w,h]=size(i);
for n=1:w
   for j=1:h
       if i(n,j)<t;
           A(n,j)=0;
       else
           A(n,j)=1;
       end
       
   end
end
imshow(A);
figure,imshow(i);
end

