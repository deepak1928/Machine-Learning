function sig=sigmoid(z)
	sig=zeros(size(z));
	sig=(1+exp(-z)).^-1;