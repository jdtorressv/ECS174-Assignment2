function horizontalSeam = find_horizontal_seam(map)

    lastCol = size(map,2);
    i = find ( map(:,lastCol) == min(map(:,lastCol)));
    
    i = i(1);
    horizontalSeam = zeros(lastCol,1);
    horizontalSeam(lastCol) = i;
    for k = lastCol:-1:1
        if (i == 1)
            newi = find(map(:,k) == min( [map(i,k), map(i + 1 , k)]));
        elseif(i + 1 > size(map,1))
            newi = find(map(:,k) == min( [ map(i,k), map(i - 1, k)]));
        else
            newi = find(map(:,k) == min( [ map(i,k), map(i + 1, k), map(i - 1 ,k)])); 
        end
        
        newidx = newi(find( newi == i ));
        newidx = [newidx, newi(find( newi == i + 1 ))];
        newidx = [newidx, newi(find( newi == i - 1 ))];
        i = newidx(1);
        horizontalSeam(k) = i;
        
    end

end