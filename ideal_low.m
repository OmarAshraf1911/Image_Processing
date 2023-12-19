function  [image_filter_apply]=ideal_low( I,d0 )
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
        if(D>d0)
            f(k,l)=0;
        else
            f(k,l)=1;
        end
    end
end
ni=(Real.*f)+(Imag.*f);
filter_apply=f_shift.*f;
image_orignal=ifftshift(filter_apply);
image_filter_apply=abs(ifft2(image_orignal));
image_filter_apply=uint8(image_filter_apply);
end

