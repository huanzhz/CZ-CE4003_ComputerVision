
Pc = imread('mrttrainbland.jpg');
whos Pc

P = rgb2gray(Pc);
whos P

% Although the image seems to be in grayscale (as shown in Figure 1.1),
% it is still considered an RGB image by matlab, so it is necessary to convert
% it to grayscale by using the rgb2gray() function before processing the image.
% This allows us to work with a 2-dimensional matrix and simplifies the process.


% The original minimun and maximum intensities in the image must be obtained in order
% to do the contrast stretching.

min(P(:P)), max(P(:))
% Min:13 , Max:204

P_sub = imsubtract(P,13);
P2 = immultiply(P_sub,255/191);
min(P(:P)), max(P(:))
% Min:0 , Max:255