%%%%%%%%% main %%%%%%%%%%%

clear
close all
%%%%%%%%%%%% read images %%%%%%%%%%%%%%
% f = 'Bharti-0';
% ext = 'jpg';
% img1 = imread([f '1.' ext]);
% img2 = imread([f '2.' ext]);
% img3 = imread('b3.jpg');
img1 = imread('11.jpg');
img2 = imread('64.jpg');
img3 = imread('22.jpg');

%%%%%%%% perform mosaicing of two images %%%%%%%%%
img0 = imMosaic(img2,img1,1);  
% img0 = imMosaic(img1,img0,1);
figure(1),imshow(img0)
% imwrite(img0,['mosaic_' f '.' ext],ext)
imwrite(img0,'m1.jpg');
img4 = imread('m1.jpg');
img1 = imMosaic(img4,img3,1);  
figure(2),imshow(img0)
% imwrite(img0,['mosaic_' f '.' ext],ext)
imwrite(img1,'m2.jpg');
