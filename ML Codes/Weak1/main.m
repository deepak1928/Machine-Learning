%main function
fprintf('\nLinear regression Weak 1');
fprintf('\nto continue press enter');
pause;

data=load('ex1data1.txt');
X=data(:,1);
Y=data(:,2);
plot(X,Y,'rx','MarkerSize',10);
pause;

theta=[-1;2];
X2=[ones(size(X,1),1) X];

J=costFunction(X2,Y,theta);
 
hold on;
J_plot=plot(X,(X2*theta),'-g');


fprintf('\ncost for the theta [-1,2] is %f',J);
fprintf('\nPlease press enter to continue');
pause;
fprintf('\nRunning gradient descent...\n');
alpha=0.01;
iterations=1500;
[theta ,J]=gdesc(X2,Y,alpha,theta,iterations);
J_plot2=plot(X,(X2*theta),'-g');
fprintf('%f\n',theta);

%J_plot2=