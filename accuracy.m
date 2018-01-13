function per = accuracy(y)

% number of training examples
m= length(y);
%predicts the index of species 
p=predictall(X,theta);
%training set accuracy
per= (mean(p==y)/(m))*100;


