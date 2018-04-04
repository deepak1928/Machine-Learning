%this is logistic regression with multi variables
fprintf('\nWelcome this is logistic regression with multiples output classification');
data=load('ex2data2.txt');
  
X=data(:,[1 2]);
Y=data(:,3);
fprintf('\nplotting the points on Graph');
plotData(X,Y);
hold on;
xlabel('microchipset 1')
ylabel('Microchipset two')

legend('Ok','Not OK');7`
