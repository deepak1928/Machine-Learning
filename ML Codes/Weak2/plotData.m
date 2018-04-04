function plotData(X,Y)

figure ;hold on;
pos = find(Y==1); neg = find(Y == 0);

plot(X(pos,1),X(pos,2),'k+','LineWidth',2,'MarkerSize',7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y','MarkerSize', 7);
hold off;
 