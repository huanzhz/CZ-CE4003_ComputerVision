%	https://www.youtube.com/watch?app=desktop&v=4Vj7SbsJLGk

image = imread('satellite_Image.png');
stretched_Image = imadjust(image, stretchlim(image, [0.05, 0.95]),[]);
 
subplot(2,2,1), imshow(image), title('Original Image');
subplot(2,2,2), imshow(stretched_Image), title('Strethced Image');
subplot(2,2,3), imhist(image), title('Histogram of Original Image');
subplot(2,2,4), imhist(stretched_Image), title('Histogram of Stretched Image');


% imadjust - Adjust image intensity values or color map
% https://www.mathworks.com/help/images/ref/imadjust.html

% stretchlim - Find limits to contrast stretch image
% https://www.mathworks.com/help/images/ref/stretchlim.html