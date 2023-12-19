function [ new_image ] = brightness( old_image ) 
op = str2double(inputdlg('Please enter option ( 1 , 2 , 3 , 4 )!'));
c = str2double(inputdlg('Please enter Constat c!'));
[h,w,l]=size(old_image); % get size image gray level
new_image=zeros(h,w); 
new_image=double(new_image);
if l==1
    for i=1:h
        for j=1:w
            if op==1
                new_image(i,j)=old_image(i,j) + c; %more
            elseif  op==2
                new_image(i,j)=old_image(i,j) * c; %more
            elseif  op==3
                new_image(i,j)=old_image(i,j) - c; %less
            elseif  op==4
                new_image(i,j)=old_image(i,j) / c; %less
            else
                errordlg('invalid option!! , please try again ( 1 , 2 , 3 , 4 )!');
                return;
            end
        end
    end
else
    for k=1:3
        for i=1:h
            for j=1:w
                if op==1
                    new_image(i,j,k)=old_image(i,j,k) + c; %more
                elseif  op==2
                    new_image(i,j,k)=old_image(i,j,k) * c; %more
                elseif  op==3
                    new_image(i,j,k)=old_image(i,j,k) - c; %less
                elseif  op==4
                    new_image(i,j,k)=old_image(i,j,k) / c; %less
                else
                    errordlg('invalid option!! , please try again( 1 , 2 , 3 , 4 )!');
                    return;
                end
            end
        end
    end
end
new_image=uint8(new_image);
end