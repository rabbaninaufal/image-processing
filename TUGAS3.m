disp('1. Menampilkan gambar');
disp('2. Image segmentation');
disp('3. Image rotate');

pil=input('Masukan pilihan : ');
switch pil
    
    case 1
        image = imread('gambar.jpg');
        imshow(image);
    case 2
        a = imread('gambar.jpg');
        level = graythresh(a);
        BW = im2bw(a, level);
        subplot(1,2,1);
        imshow(a);
        title('Original Image');
        subplot(1,2,2);
        imshow(BW);
        title('Segmented Image');
    case 3
        A=imread('gambar.jpg');
        d=A;
        [baris kolom]=size(A);
        for i=1:baris;
            for j=1:kolom;
                d(j, baris+1-i)=A(i,j);
            end
        end
        subplot(1,2,1), imshow(A);
        title('Original Image');
        subplot(1,2,2), imshow(d);
        title('Rotate Image');
    
end;
