function [J,grad] = IrisCost(theta,X,y,lambda)
%number of training example in dataset 
m=size(X,1);
 %gradient should have  same size as that of theta 
 grad=zeros(size(theta));
 
 J=0;
 %regularized costfunction 
 J=(1/m)*sum(-y'*log(sigmoid(X*theta))-(1-y)'*log(1-sigmoid(X*theta))) +(lambda/(2*m))*sum((theta(2:length(theta))).*theta(2:length(theta)));

 
%grad as sam size as of theta
grad=(1/m)*sum(X.*repmat((sigmoid(X*theta)-(y)),1,columns(X)));
temp=theta;
temp(1)=0;
grad(1)=grad(1);
grad(2:end)=(grad(2:end))' + ((lambda/m)*temp(2:end));
 
 grad=grad(:);

end
