% Read the input image
inputImage = imread('ngc6543a.jpg');

% Define the wavelet and level of decomposition
waveletType = 'db1';  % Daubechies wavelet with one vanishing moment
level = 2;

% Perform wavelet transform
coefficients = wavedec2(inputImage, level, waveletType);

% Modify coefficients if needed (e.g., for compression)

% Perform inverse wavelet transform
reconstructedImage = waverec2(coefficients, size(inputImage), waveletType);

% Display the original and reconstructed images
figure;

subplot(1, 2, 1);
imshow(inputImage);
title('Original Image');

subplot(1, 2, 2);
imshow(uint8(reconstructedImage));
title('Reconstructed Image');

% Save the reconstructed image
imwrite(uint8(reconstructedImage), 'reconstructed_image.jpg');
