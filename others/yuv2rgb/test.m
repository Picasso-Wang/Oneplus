clear;
clc;

number = 10;

for i = 1:number
    image{i} = imread(sprintf('./image/original_%i.bmp',i));
    if i>1
        delta = image{i} - image{i-1};
        imwrite(delta,sprintf('./image/delta_%d_%d.bmp',i,i-1))
    end
end