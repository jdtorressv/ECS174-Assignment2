
function energyImg= energy_img(img)
    %ENERGY_IMG Summary of this function goes here
    %   Detailed explanation goes here
    im = rgb2gray(img);
    %dy = diff(im);
    %dx = diff(im,[],2);
    im = double(im);
    hx = [-1 1]; %horizontal
    hy = [-1 ; 1;];
    dx = imfilter(im, hx,'conv');
    dy = imfilter(im, hy,'conv');
    %dx = double(dx);
    %dy = double(dy);
    energyImg = sqrt(dx.^2 + dy.^2);
    %energyImg= abs(dx) + abs(dy); 
    %  should be double 
end

