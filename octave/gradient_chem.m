#!/usr/bin/octave-cli -qf

format long;
X = [1 0.001705611;1 0.001691189;1 0.001677008;1 0.001663063;1 0.001649349;1 0.001635858;1 0.001622586]
y = [10.10770301;10.27726232;10.45728766;10.64216024;10.83818786;11.03265181;11.21712622]

a = 0.03
t=[20;-13000];
i=0;
while i<=10000;
    h=X*t;
    j0 = sum((h-y).*X(:,1),1);
    j1 = sum((h-y).*X(:,2),1);
    t(1,:) =t(1,:)-a*j0;
    t(2,:) =t(2,:)-a*j1;
    i=i+1;
end;
    j = sum((h-y).*(h-y),1)
    t

