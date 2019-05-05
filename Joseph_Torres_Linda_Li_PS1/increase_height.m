function imo =  increase_height(im,horizontalSeam)

   imo = zeros(size(im,1) + 1,size(im,2),size(im,3));
   %disp(size(imo));
   for i = 1: size(horizontalSeam,2)
       j = horizontalSeam(i);
       col = im(:,i,:); %iss a col in matrix     
       col = [col(1:j,:,:); col(j:end,:,:)];
       %disp(size(col));
       %disp(col);
       imo(:,i,:) = col;
   end
   imo = uint8(imo);
end
