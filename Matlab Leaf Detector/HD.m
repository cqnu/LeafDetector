function output = HD( I1 , I2 )
%I2 is truth
%get edgepixels of each image
I1 = bwperim(I1);

I2 = bwperim(I2);


%I2dist is the distance from each pixel in I2 to the nearest nonzero pixel
%in I2
I2dist = bwdist(I2);
I1dist = bwdist (I1);
%get set of boundary points from segleaf image
B = find(I1);
A = find(I2);
%for each pixel in the boundary, find the distance to the closest nonzero pixel in the ground truth 
[sizeB c] = size (B);
dist1 = [];
for i = 1:sizeB
    %the distance between each point on the boundary of I1 to the nearest
    %nonzero pixel in I2 is squared then added to the list
   distance = I2dist(B(i));
   dist1 = [dist1 distance^2];  
end
%for each pixel in the boundary, find the distance to the closest nonzero pixel in the ground truth 
[sizeA d] = size (A);
dist2 = [];
for i = 1:sizeA
   distance = I1dist(A(i));
   dist2 = [dist2 distance^2];  
end
output = max(max(dist1),max(dist2));


end


