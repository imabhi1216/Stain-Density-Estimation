
function Iop = Normalize(Iin)                  
        % Normalization Function
	    Iop = Iin;  
	    for i=1:size(Iin,3)
		Channel = Iop(:,:,i);
        % Converting image intensties in between 0 and 1 
		Iop(:,:,i) = (Iop(:,:,i)-min(Channel(:)))/(max(Channel(:)-min(Channel(:))));
        % Invert image
        Iop(:,:,i) = 1 - Iop(:,:,i);
     end
end