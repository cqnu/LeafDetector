function output = DSC( I1 , I2 )
%nnz returns the number of non zero pixels. the & operator returns the
%common pixels between 2 images
output = 2*nnz(I1&I2)/(nnz(I1) + nnz(I2));


end

