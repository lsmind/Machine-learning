function theta = gradient(X,y,theta,a,n)
format long;
i=0;
while i<=n,
    h=X*theta;
    deta = 1/size(y)(:,1)*(X'*(h-y));
    theta = theta-a*deta;
    i=i+1;
end;


