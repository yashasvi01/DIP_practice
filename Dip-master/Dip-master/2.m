% Read the image
img = imread('ngc6543a.jpg');
% Original Image
figure;
imshow(img);
title('Original Image');

% Obtain Negative Image
negative_img = 255 - img;
% Negative Image
figure;
imshow(negative_img);
title('Negative Image');


% Obtain Flip Image (vertical flip)
flipped_img = flipud(img);
% Flipped Image
figure;
imshow(flipped_img);
title('Flipped Image');

% Convert image to grayscale if not already
gray_img = rgb2gray(img);
% Grayscale Image
figure;
imshow(gray_img);
title('Grayscale Image');


% Set a threshold value (adjust as needed)
threshold_value = 128;
% Apply thresholding
binary_img = gray_img > threshold_value;
% Thresholded Image
figure;
imshow(binary_img);
title('Thresholded Image');


% Compute min and max pixel values for contrast stretching
min_val = min(gray_img(:));
max_val = max(gray_img(:));

% Perform contrast stretching
contr_stretch_img = 255 * ((double(image) - min_val) / (max_val - min_val));;;
% Contrast-Stretched Image
figure;
imshow(uint8(contr_stretch_img));
title('Contrast-Stretched Image');
