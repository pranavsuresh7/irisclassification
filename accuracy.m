function per = accuracy(p,y)
% number of training examples
m= length(y);
%training set accuracy
per= (mean(p==y)/(m))*100;


