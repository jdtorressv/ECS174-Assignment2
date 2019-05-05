function [seams, im] = seam_carving_increase_width(im,energyMap,n)
    findSeamIm = im;
    e = energy_img(findSeamIm);
    map = cumulative_min_energy_map(e,'vertical');
    seams = zeros(size(im,1),n);
    for i = 1:n
        seams(:,i) = find_vertical_seam(map);
        [findSeamIm,map] = decrease_width(findSeamIm,map);
    end   
   %disp(seams);
    for i = 1:n
        im = increase_width(im,seams(:,i));
        %disp(i);
    end    
    imshow(im);
end