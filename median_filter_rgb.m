function [ ] = median_filter_rgb(img)
M=3;
N=3;

modifyA=padarray(img,[floor(M/2),floor(N/2)]);

B = zeros([size(img,1) size(img,2)]);
med_indx = round((M*N)/2); %MEDIAN INDEX
for i = 1:size(modifyA,1)-(M-1)
    for j = 1:size(modifyA,2)-(N-1)
       
       
        temp = modifyA(i:i+(M-1),j:j+(N-1),:);
    
        for k = 1:3

          tmp = temp(:,:,k);
          B(i,j,k) = median(tmp(:));

        end
      
       
    end
end

B = uint8(B);
imshow(B);
end

