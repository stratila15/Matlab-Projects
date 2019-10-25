function [ min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img)
  

Itest=double(rgb2gray(imread(image_path)));
T=Itest(:);


y=T-m;

preig=eigenfaces';

kis=preig * y;

for i=1:10
eps(i,1)=norm(kis - pr_img(:,i));

endfor

[g o]=min(eps);
min_dist=g;
output_img_index=o;


end