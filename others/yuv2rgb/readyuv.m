function rgb=readyuv(filename,img_width,img_hight)
    fid = fopen(filename,'r','b');
    img=fread(fid,[img_width,img_hight*1.5],'uint8')';
    fclose(fid);
    Y=img(1:img_hight,:);
    V=imresize(img(img_hight+1:end,1:2:end),2);
    U=imresize(img(img_hight+1:end,2:2:end),2);
    R = Y + 1.402 *(V-128);
    G = Y - 0.34414 *(U-128) - 0.71414 *(V-128);
    B = Y + 1.772 *(U-128);
    clear Y U V
    rgb=cat(3,R,G,B);
    clear R G B
    rgb=uint8(rgb);
end