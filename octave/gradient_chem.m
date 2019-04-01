a = 0.03
t=[20;-13000];

for i=0:20
    h=X*t;
    j = [sum((h-y).*X(:,1),1),sum((h-y).*X(:,2),1)];
    t -=a*j;
    x1=[1;0.0018];
    y1=x1.*t(2,:)+t(1,:);
    plot(X(:,2),y,'p')
    plot(x1,y1,'r')
    pause(3)
end;
    j = sum((h-y).*(h-y),1)
    t

