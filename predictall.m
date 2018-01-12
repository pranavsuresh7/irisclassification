function p=predictall(X,theta);


p=sigmoid(X*theta');
[pr index]=max(p,[],2);
 p=index;
 end