function [all_theta]=onevsall(X,label,y)

lambda=.3
n=size(X,2);
theta_t=zeros(n,1);
all_theta=zeros(label,n);

options=optimset('GradObj','on','MaxIter',50);
for i=1:label

[all_theta(i,:)]=fminunc(@(t)IrisCost(t,X,(y==i),lambda),theta_t,options);
end
