function segmentedImage = segleaf( I )

%figure;imshow(I);
%get each channel
redChannel = I(:,:,1);
greenChannel = I(:,:,2);
blueChannel = I(:,:,3);

%measure of greenness
greenness = min(abs(greenChannel - redChannel),abs(greenChannel - blueChannel));


%any pixels with a greenness value below the threshhold are eliminated
segmentedImage = im2bw(greenness, 0.04);

%any small connected components are removed so the image is one big
%component
segmentedImage = bwareaopen(segmentedImage,350);

%small holes are filled in, assuming the leaf does not have small holes.
segmentedImage = imfill(segmentedImage, 'holes');




end

