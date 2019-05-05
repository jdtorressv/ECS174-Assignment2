function firstSeams()
    figure;
    subplot(2,2,1);
    prague = imread("inputSeamCarvingPrague.jpg");
    imshow(prague);
    title("Prague Original Picture");
    subplot(2,2,2);
    energy_prague = energy_alt(prague);
    energy_map_prague = cumulative_min_energy_map(energy_prague,"vertical");
    verticalSeam = find_vertical_seam(energy_map_prague);
    view_seam(prague,verticalSeam,'vertical');
    title("Vertical Seam");
    subplot(2,2,3);
    energy_map_prague = cumulative_min_energy_map(energy_prague,"horizontal");
    horizontalSeam = find_horizontal_seam(energy_map_prague);
    view_seam(prague,horizontalSeam,'horizontal');
    title("Horizontal Seam");
end