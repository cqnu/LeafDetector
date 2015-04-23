%read in the 4 chosen images
I1 = imread('original/image_0161.jpg');
I2 = imread('original/image_0005.jpg');
I3 = imread('original/image_0078.jpg');
I4 = imread('original/image_0080.jpg');
%do segleaf on them
S1 = segleaf(I1);
S2 = segleaf(I2);
S3 = segleaf(I3);
S4 = segleaf(I4);
%get the outline of the image, and plot it on the original
%then plot the segmented image.
BWoutline = bwperim(S1);
Segout = I1;
Segout(BWoutline) = 255;
figure;subplot(1,2,1)
imshow(Segout), title('outlined original image');
subplot(1,2,2)
imshow(S1), title('segmented region');
%continue to do this for each image
BWoutline = bwperim(S2);
Segout = I2;
Segout(BWoutline) = 255;
figure;subplot(1,2,1)
imshow(Segout), title('outlined original image');
subplot(1,2,2)
imshow(S2), title('segmented region');

BWoutline = bwperim(S3);
Segout = I3;
Segout(BWoutline) = 255;
figure;subplot(1,2,1)
imshow(Segout), title('outlined original image');
subplot(1,2,2)
imshow(S3), title('segmented region');

BWoutline = bwperim(S4);
Segout = I4;
Segout(BWoutline) = 255;
figure;subplot(1,2,1)
imshow(Segout), title('outlined original image');
subplot(1,2,2)
imshow(S4), title('segmented region');