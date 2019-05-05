function imo =  increase_width(im,verticalSeam)

   imo = zeros(size(im,1),size(im,2)+1,size(im,3));
   %disp(size(verticalSeam));
   for i = 1: size(verticalSeam)
        j = verticalSeam(i);
       %disp(j);
       row = im(i,:,:); %iss a row in matrix
       row = [row(:,1:j,:),row(:,j:end,:)] ;
       imo(i,:,:) = row;
   end
   imo = uint8(imo);
end