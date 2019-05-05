function e = cumulative_min_energy_map(e,direction)
    %horizontal cumulative
    if (strcmpi(direction,'vertical'))
        for row=2:size(e,1) 
            for col=1:size(e,2)
                %disp(col);
                if (col == 1)
                     minNum = min( [e(row-1,col),e(row-1,col+1)]);                 
                elseif( col + 1 > size(e,2))
                     minNum = min( [e(row-1,col-1), e(row-1,col)]);
                else
                     minNum = min([ e(row-1,col-1), e(row-1,col),e(row-1,col+1)]);
                end
                %display(minNum);
                e(row,col) = e(row,col) + minNum;
            end
        end
    end
    if (strcmpi(direction,'horizontal'))
        for col=2:size(e,2) 
            for row=1:size(e,1)
                %disp(col);
                if (row == 1)
                     minNum = min([  e(row,col-1),e(row+1,col-1)]);                 
                elseif( row + 1 > size(e,1))
                     minNum =min([ e(row-1,col-1), e(row,col-1)]);
                else
                     minNum = min([ e(row-1,col-1), e(row,col-1),e(row+1,col-1)]);
                end
                %display(minNum);
                e(row,col) = e(row,col) + minNum;
            end
        end
    end
end