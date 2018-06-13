function theta = normalEquation(X,y)
format long;
theta = pinv(X'*X)*X'*y;
