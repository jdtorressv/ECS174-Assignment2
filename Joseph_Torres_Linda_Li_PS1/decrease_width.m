function [reducedColorImg,reducedEnergyImg] = decrease_width(im,energyImg) 
   map = cumulative_min_energy_map(energyImg, 'vertical' );
   verticalSeam = find_vertical_seam(map);
   reducedColorImg = zeros(size(im,1),size(im,2)-1,size(im,3));
   for i = 1: length(verticalSeam)
       j = verticalSeam(i);
       row = im(i,:,:); %iss a row in matrix
       row(:,j,:) = [];
       reducedColorImg(i,:,:) = row;
   end
   reducedColorImg = uint8(reducedColorImg);
   reducedEnergyImg = energy_img(reducedColorImg);
end