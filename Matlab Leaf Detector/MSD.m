function output = MSD( I1 , I2 )
%I2 is truth
%get edgepixels of each image
I1 = bwperim(I1);

I2 = bwperim(I2);


%I2dist is the distance from each pixel in I2 to the nearest nonzero pixel
%in I2
I2dist = bwdist(I2);

%get set of boundary points from segleaf image
B = find(I1);
%for each pixel in the boundary, find the distance to the closest nonzero pixel in the ground truth 
[sizeB c] = size (B);
dist = [];
for i = 1:sizeB
    %the distance between each point on the boundary of I1 to the nearest
    %nonzero pixel in I2 is squared then added to the list
   distance = I2dist(B(i));
   dist = [dist distance^2];  
end
output = mean(dist);


end

