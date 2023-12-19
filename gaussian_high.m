function [image_filter_apply]=gaussian_high( I,d0)
%figure,imshow(I);
fi=fft2(I);
f_shift=fftshift(fi);
Real=real(fi);
Imag=imag(fi);
image_filter_apply=Real(:,:)+i*Imag(:,:);
[w,h]=size(I);
f=zeros(w,h);
for k=1:w
    for l=1:h
        D=sqrt((k-(w/2))^2+(l-(h/2))^2);
      
            f(k,l)=1-(exp(-(D)^2/(2*(d0^2))));
        
    end
end
filter_apply=f_shift.*f;
image_orignal=ifftshift(filter_apply);
image_filter_apply=abs(ifft2(image_orignal));
NI=uint8(image_filter_apply);
NI=image_filter_apply;
image_filter_apply=uint8(image_filter_apply);

end
