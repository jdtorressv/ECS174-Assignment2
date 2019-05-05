function [seams, im] = seam_carving_increase_height(im,energyMap,n)
    findSeamIm = im;
    e = energy_img(findSeamIm);
    map = cumulative_min_energy_map(e,'horizontal');
    seams = zeros(n,size(im,2));
    for i = 1:n
        seams(i,:) = find_horizontal_seam(map);
        [findSeamIm,map] = decrease_height(findSeamIm,map);
    end   
    %disp(seams);
    for i = 1:n
        %disp(seams(i,:));
        im = increase_height(im,seams(i,:));
    end    
    imshow(im);
end