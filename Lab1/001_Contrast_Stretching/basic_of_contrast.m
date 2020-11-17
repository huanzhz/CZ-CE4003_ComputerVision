% 	https://www.youtube.com/watch?v=UZkViE9DkVk
%	Contrast = how well you see object from background. Histogram gives insight of contrast.
%	A dark contrast image has histogram cluttered near left side ( 0 - 50 dark side) and 
%	a bright contrast image has histogram cluttered at the right side ( 200-255). 
%	A poor contrast images has histogram cluttered at the center.
%	Make histogram as spread out as possible to get a good contrast image.

%	[im is short form of image obj]
%	[figure is to display the image in new window]
%	[imshow is to display the image]
im = imread('image.png');
figure, imshow(im) ,title 'Poor contrast image'
figure, imhist(im) ,title 'histogram'
im_histeq = histeq(im);
figure, imshow(im_histeq), title 'Enhanced contrast image'
figure, imhist(im_histeq), title 'Enhanced image histogram'



% Gramma Law - shift the histogram to left(darker) right(brighter)
gamma = 0.5; %if gamma = 1 no change, if gamma < 1 brighten, if gamma > 1 darken
im = imread('image.png');
imdouble = im2double(im)	% convert to double [0 1]
outtemp = imdouble.^gamma;	% .^ = power function ->(x^2)
out1 = uint8(255*outtemp)	% convert back to uint and get [0 255] range
figure, imshow(out1), title 'Contrast enhanced by Gamma Law'
figure, imhist(out1), title 'Gamma Law Histogram'



% Stetchlim and imadjust
im = imread('image.png');
out3 = imadjust(im,strechlim(im),[0 1]);
figure, imshow(out3), title 'Contrast enhanced by imadjust'
figure, imhist(out3), title 'Histogram after imadjust'


% others
% combine secret image
% https://www.youtube.com/watch?v=XZ_pNUYTy6s
