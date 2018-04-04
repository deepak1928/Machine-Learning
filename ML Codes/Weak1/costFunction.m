eifunction J = costFunction(X2,Y,theta) 
    m=size(X2,1);
	J=(1/(2*m))*(sum(((X2*theta)-Y).^2));
end;