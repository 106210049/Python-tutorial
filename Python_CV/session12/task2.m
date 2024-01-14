img = imread('image\reg.png');
I = rgb2gray(img);
[h, w] = size(I);
H = [1 -2 1];
Y1 = conv2(I,H,'same');
Y2 = conv2(I,transpose(H),'same');
subplot(2,2,1);
imshow(Y1,[]);
subplot(2,2,2);
imshow(Y2,[]);
subplot(2,2,3);
imshow(abs(Y1),[]);
subplot(2,2,4);
imshow(abs(Y2),[]);