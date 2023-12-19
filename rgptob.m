function [ na2 ] = rgptob( i )
%aa=rgptog(s);
%A=GTOB(aa,a);
%imshow(A);
   [w,h,l]=size(i);
    for n=1:w
       for j=1:h
            np(n,j)=i(n,j,1);
       end
    end
for n=1:w
       for j=1:h
           if np(n,j)<150;
               na2(n,j)=0;
           else
               na2(n,j)=1;
           end

       end
end
           imshow(i);

end

