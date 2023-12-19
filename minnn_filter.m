function [] = minnn_filter(img)
M=3;
N=3;
img=padarray(img,[1,1]);
[h ,w ,l] =size(img);
B = zeros(h ,w);
if l==1
 for i = 2:h-1
    for j = 2:h-1
       
       
        temp = img(i-1:i+1,j-1:j+1);

          B(i,j) = min(temp(:));

       
      
       
    end
 end

 B = uint8(B);
 imshow(B);
else
  for k=1:3
   for i = 2:h-1
    for j = 2:w-1
       
       
        temp = img(i-1:i+1,j-1:j+1,k);

          B(i,j,k) = min(temp(:));
  end
    end
  end
B = uint8(B);
imshow(B);
end