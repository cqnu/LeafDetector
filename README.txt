This project is a collection of matlab files which attempts to detect which region of a series of test images is a leaf. The program attempts to
outline the edge of what it thinks the leaf is. The folder called groundtruth contains images which have been segmented by hand into the leaf and 
non leaf region. 

We use the dice similarity coefficient, Hausdorff Distance, and mean square distance metrics to compare how well our algorithm segmented the images
compared to the ground truth.

To run the program, you can run either validateleaf.m or showsegmentations.m

showsegmentations is the most interesting script as it actually shows the algorithm working and displays the final image of what it thinks is the 
leaf with an outline around it. validateleaf will show you how well the segleaf algorithm performed using the previously mentioned metrics

The leaf detection algorithm itself is located in segleaf.m. Although it is a short function and the leaf detection step takes place in only one line,
I feel like it is a pretty clever solution to the problem. Many students who I had spoken to about their solution had several blocks of code which 
they used to detect the leaf, and my solution was as accurate as it needed to be (very accurate) while being much more succinct. The algorithm essentially
just looks at each pixel and decides if it is "green enough" to be a leaf. It then makes some small corrections to account for shadows and the assumption
that a leaf is a large connected object and returns the segmented image.