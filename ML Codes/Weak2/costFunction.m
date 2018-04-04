function [cost,grad]= costFunction(X,Y,theta)
	J=0;
	grad=zeros(size(theta));
	m=length(Y);
	z=X*theta;
	sig=sigmoid(z);
	cost=((-Y)'*log(sig)-(1-Y)'*log(1-sig))/(m);
	
    grad = (X'*(sig - Y))/m;