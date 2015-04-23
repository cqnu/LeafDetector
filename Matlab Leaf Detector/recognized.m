function output = recognized(I1 , I2 )
%an image is considered recognized if it has a DSC of more than 0.6
if DSC(I1,I2) > 0.6
    output = 1;
end
if DSC(I1,I2) <= 0.6
    output = 0;
end

end

