load inputSeam.mat; 
energyMap = energy_img(inputSeam); 
for i = 1:100
   [inputSeam, energyMap] = decrease_width(inputSeam, energyMap);
end    
figure(1); 
imshow(inputSeam); 

load inputMall.mat; 
figure(1); 
imshow(inputMall); 
energyMap = energy_img(inputMall);
for i = 1:100
    [inputMall, energyMap] = decrease_width(inputMall, energyMap);
end    
figure(2); 
imshow(inputMall); 

