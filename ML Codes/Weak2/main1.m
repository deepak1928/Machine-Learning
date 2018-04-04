fprintf('Welcome to Logistic RRegresion \n')
fprintf('please press enter to continue \n');
pause;

clear;close all;clc;

%loading data

data=load('ex2data1.txt');
X=data(:,[1 2]);
Y=data(:,3);

plotData(X,Y);

fprintf('press enter to continue');
hold on;
xlabel('Exam1 Score');
ylabel('Exam2 Score');

legend('Passed','Failed');
hold off;
 
fprintf('press enter to continue1');
pause;

% cost computation and gradient

[m,n]=size(X);

X=[ones(m,1) X];
initial_theta=zeros(n+1,1);
[J ,grad]=costFunction(X,Y,initial_theta);

fprintf('\ncost at initial theta is %f ',J);
fprintf('To continue press enter :\n');
pause;

 fprintf('\nvalue of grad:');
 fprintf('%f \n',grad);
 
%optimizing using fminunc 
options=optimset('GradObj','on','MaxIter',400);
[theta ,cost]=fminunc(@(t)(costFunction(X,Y,t)),initial_theta,options);
 
 fprintf('Cost of theta found by fminunc is:\n',cost);
 fprintf('Theta value obtained: \n');
 fprintf('%f \n',theta);
 
 fprintf('To continue press enter');
 pause;
 
 %plot boundaries
 
 PlotDecisionBoundary(X,Y,theta);
 
 hold on;
 xlabel('Exam1 Score ')
 ylabel('Exam2 Score')

 legend('Passed','Failed')
 hold off;
 fprintf('\n program paused .press Enter to continue\n');
 pause;
 
% predicting result of a person getting 45 marks in Exam1 and 85 in Exam 2

prob=sigmoid([1 45 85]*theta) ;
fprintf('probability of student to get admission by getting 45 ,85 is %f',prob);

% predicting Accuracy of function 
 
 K=sigmoid(X*theta);
 p=zeros(size(K));
 for i=1:length(K)
	if(K(i)>0.5)
	 p(i)=1;
	else
	 p(i)=0;
	 end;
end;

 fprintf('Train Accuracy %f \n',mean(double(Y==p))*100);

fprintf('program is over.For exit press ENTER'); 
pause;
