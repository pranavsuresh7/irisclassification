clear ; close all; clc



 data=load('iris.txt');

 X=data(:,1:4);
 g=data(:,5);
 
 fprintf("loading the dataset");
 
 
 lambda=.3;
 X=[data(:,1:4)];
 
 
 theta=zeros(4,1);
 [J grad]=IrisCost(X,g,theta,lambda);
 
 fprintf("cost%f\n",J);
 fprintf("grad %f\n",grad);
 
 fprintf('Program paused. Press enter to continue.\n');
 label=3;
 theta=predict(X,label,theta,g);
 
 fprintf('Program paused. Press enter to continue.\n');
 p=predictall(X,theta');
 fprintf('Program paused. Press enter to continue.\n');
 k=mean(double(p == g));
  fprintf('Program accuracy\n',(k*100));
