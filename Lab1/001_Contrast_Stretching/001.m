
img = imread('mrt-train.jpg');
whos img

img = rgb2gray(img);
whos img

figure, imshow(img)

r_min = double(min(img(:)))		% Convert to double for later use
r_max = double(max(img(:)))

% r_min = 13, r_max = 204

img = uint8(255 * (double(img) - r_min) / (r_max - rmin));
assert(min(img(:)) == 0 && max*img(:)) == 255) 	% Check if it worked

% The assertion would throw an error if the contrast streching had failed.
% because there is no output, everything worked expected.

figure, imshow(img)