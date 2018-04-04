function [theta_grad,J]=gdesc(X,Y,alpha,theta,iterations)
	m=size(X,1);
	for i=1:iterations
	
	theta=theta-(alpha/m)*(sum((X*theta)-Y));
	J(i)=costFunction(X,Y,theta);
	end;
	theta_grad=theta;
 