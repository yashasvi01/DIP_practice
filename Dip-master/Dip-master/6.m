% Read the input image
inputImage = imread('ngc6543a.jpg');

% Display the original image
figure;
subplot(2, 3, 1);
imshow(inputImage);
title('Original Image');

% a. Translation
translationX = 30;
translationY = 20;
translatedImage = imtranslate(inputImage, [translationX, translationY]);

% Display the translated image
subplot(2, 3, 2);
imshow(translatedImage);
title('Translated Image');

% b. Scaling
scalingFactor = 1.5;
scaledImage = imresize(inputImage, scalingFactor);

% Display the scaled image
subplot(2, 3, 3);
imshow(scaledImage);
title('Scaled Image');

% c. Rotation
rotationAngle = 30;
rotatedImage = imrotate(inputImage, rotationAngle);

% Display the rotated image
subplot(2, 3, 4);
imshow(rotatedImage);
title('Rotated Image');

% d. Shrinking
shrinkingFactor = 0.7;
shrunkenImage = imresize(inputImage, shrinkingFactor);

% Display the shrunken image
subplot(2, 3, 5);
imshow(shrunkenImage);
title('Shrunken Image');

% e. Zooming
zoomingFactor = 1.3;
zoomedImage = imresize(inputImage, zoomingFactor);

% Display the zoomed image
subplot(2, 3, 6);
imshow(zoomedImage);
title('Zoomed Image');
