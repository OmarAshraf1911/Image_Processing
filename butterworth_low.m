function  [ni]=butterworth_low( I,d0,n )

fi=fft2(I);
f_shift=fftshift(fi);
Real=real(fi);
Imag=imag(fi);
[w,h]=size(I);
f=zeros(w,h);
for k=1:w
    for l=1:h
        
            D=sqrt((k-(w/2))^2+(l-(h/2))^2);
            f(k,l)=1/(1+((D/d0)^2*n));
        
    end
end
ni1=(Real.*f)+(Imag.*f);
filter_apply=f_shift.*f;
image_orignal=ifftshift(filter_apply);
image_filter_apply=abs(ifft2(image_orignal));
ni=uint8(image_filter_apply);

end

