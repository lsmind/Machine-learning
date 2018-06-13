function theta = normalEquation(X,y);

% X is a Matrix
% y is a vector 
format long;                 % need a exact value

theta = pinv(X'*X)*X'*y;     % This is the formula
