function per = accuracy(p,y)
% number of training examples
m= length(y);
%
p= (mean(p==y)/(m))*100;


