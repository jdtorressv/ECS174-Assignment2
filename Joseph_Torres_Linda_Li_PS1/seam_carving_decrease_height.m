load inputSeam.mat; 
energyMap = energy_img(inputSeam); 
for i = 1:50
   [inputSeam, energyMap] = decrease_height(inputSeam, energyMap);
end    
figure(1); 
imshow(inputSeam); 

load inputMall.mat; 
energyMap = energy_img(inputMall);
for i = 1:50
    [inputMall, energyMap] = decrease_height(inputMall, energyMap);
end    
figure(2); 
imshow(inputMall); 