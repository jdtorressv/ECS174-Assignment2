function [reducedColorImg,reducedEnergyImg] = decrease_height(im, energyImg) 
   map = cumulative_min_energy_map(energyImg, 'horizontal');
   horizontalSeam = find_horizontal_seam(map);
   reducedColorImg = zeros(size(im,1)-1,size(im,2),size(im,3));
   for i = 1: length(horizontalSeam)
       j = horizontalSeam(i);
       col = im(:,i,:); %iss a col in matrix
       %disp(size(row));
       %disp(j);
       col(j,:,:) = [];
       %disp(size(row));
       reducedColorImg(:,i,:) = col;
   end
   reducedColorImg = uint8(reducedColorImg);
   reducedEnergyImg = energy_img(reducedColorImg);
end