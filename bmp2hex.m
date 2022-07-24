clc; clear all;

b=imread('C:\Users\Darren Huang\Desktop\Project\EE_p\Data\DataSet\Result\Second Edition\1\1.bmp'); % 24-bit BMP image RGB888 


%image size : 200×480 pixels
%folder     : folder choose

a=zeros; 
folder = '1\';
k      =  1 ;

for i=480:-1:1 % image is written from the last row to the first row
for j=1:200
if(b(i,j))
    nb(i,j,1)=255;
    nb(i,j,2)=255;
    nb(i,j,3)=255;
else
    nb(i,j,1)=0;
    nb(i,j,1)=0;
    nb(i,j,1)=0;
end
end
end
for i=480:-1:1 % image is written from the last row to the first row
for j=1:200
a(k)=nb(i,j,1);
a(k+1)=nb(i,j,2);
a(k+2)=nb(i,j,3);
k=k+3;
end
end

imwrite(nb,['C:\Users\Darren Huang\Desktop\Project\EE_p\Data\DataSet\16hex\',folder,int2str(k),'.bmp']);