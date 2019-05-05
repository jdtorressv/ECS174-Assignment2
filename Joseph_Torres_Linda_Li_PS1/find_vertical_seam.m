function verticalSeam = find_vertical_seam(map)
    lastRow = size(map,1);
    i = find ( map(lastRow,:) == min(map(lastRow,:)));
    i = i(1);
    verticalSeam = zeros(lastRow,1);
    verticalSeam(lastRow) = i;
    for k = lastRow:-1:1
        if (i == 1)
            newi = find(map(k,:) == min( [map(k,i), map(k,i + 1 )]));
        elseif(i + 1 > size(map,2))
            newi = find(map(k,:) == min( [ map(k,i), map(k,i - 1 )]));
        else
            newi = find(map(k,:) == min( [ map(k,i), map(k,i + 1 ), map(k,i - 1 )])); 
        end
        
        newidx = newi(find( newi == i ));
        newidx = [newidx, newi(find( newi == i + 1 ))];
        newidx = [newidx, newi(find( newi == i - 1 ))];
        i = newidx(1);
        verticalSeam(k) = i;
    end
end