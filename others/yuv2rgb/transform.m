clear;
clc;

width = 4608;
hight = 3456;

files = dir('./17/*.yuv');

for i=1:length(files)
    img = readyuv(fullfile('17',files(i).name),width,hight);
    imwrite(img,sprintf('./image/17copy/original_%d.bmp',i));
end