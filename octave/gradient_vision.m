format long;
function plot_fit(x,y,t)
    x1=[min(x);max(x)];
    y1=x1.*t(2,:)+t(1,:);
    plot(x1,y1,'r')
    hold on
    plot(x ,y,'p')
    hold off
    pause(0.1)
end
function plot_j_theta(j,t)
    
end

x = [0.001705611;0.001691189;0.001677008;0.001663063;0.001649349;0.001635858;0.001622586]
y = [10.10770301;10.27726232;10.45728766;10.64216024;10.83818786;11.03265181;11.21712622]

a = 0.1
t=[0;0];
m=1/size(y,2);

X=[max(ones(size(x,1)))',x]

for i=0:100
    j=X'*(X*t-y)
    t -= a*j/m;
    plot_fit(x,y,t);
end

