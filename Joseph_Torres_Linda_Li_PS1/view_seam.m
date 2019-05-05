function view_seam(im,seam,seamDirection)
    imshow(im);
    hold on;
    if (strcmpi(seamDirection, 'vertical') == true)
        x = seam;
        y = (1:size(im,1));
        plot(x,y);
    elseif(strcmpi(seamDirection,'horizontal') == true)
        y = seam;
        x = (1:size(im,2));
        plot(x,y);
    end
    hold off;
end