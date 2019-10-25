function [m A eigenfaces pr_img] = eigenface_core(database_path)



I1=double(rgb2gray(imread('./task6/dataset/1.jpg')));
T(:,1)=I1(:);

I2=double(rgb2gray(imread('./task6/dataset/2.jpg')));	
T(:,2)=I2(:);

I3=double(rgb2gray(imread('./task6/dataset/3.jpg')));
T(:,3)=I3(:);  

I4=double(rgb2gray(imread('./task6/dataset/4.jpg')));
T(:,4)=I4(:);

I5=double(rgb2gray(imread('./task6/dataset/5.jpg')));
T(:,5)=I5(:);

I6=double(rgb2gray(imread('./task6/dataset/6.jpg')));
T(:,6)=I6(:);

I7=double(rgb2gray(imread('./task6/dataset/7.jpg')));
T(:,7)=I7(:);

I8=double(rgb2gray(imread('./task6/dataset/8.jpg')));
T(:,8)=I8(:);

I9=double(rgb2gray(imread('./task6/dataset/9.jpg')));
T(:,9)=I9(:);

I10=double(rgb2gray(imread('./task6/dataset/10.jpg')));
T(:,10)=I10(:);


[x y]=size(T);

for i=1:x
	m(i,1)=mean(T(i,:));
end

for j=1:y
A(:,j)=T(:,j) - m;
endfor

tr=A';

L=tr * A;

[V D]=eig(L);

eigenfaces=A * V;

treig=eigenfaces';

pr_img=treig * A;

end
