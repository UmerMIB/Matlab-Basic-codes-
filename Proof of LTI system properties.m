% Proof of LTI system properties
% Linearity
t=-1.2:0.0001:1.2;
x=zeros(size(t));
h=zeros(size(t));
x(t>=-1 & t<=1)=1;
subplot(6,1,1);
plot(t,x);ylabel('x(t)');
h(t>=-1 & t<=1)=1;
subplot(6,1,2);
plot(t,h);
ylabel('h(t)');
y=conv(x,h);
tt=t(1)+t(1):0.0001:t(end)+t(end);
subplot(6,1,3);
plot(tt,y*0.0001);
ylabel('y(t)');
% Addition property
x2=x+x;
ya=conv(x2,h);
tt=t(1)+t(1):0.0001:t(end)+t(end);
subplot(6,1,4);
plot(tt,ya*0.0001);
yb=y+y;
hold on
plot(tt,yb*0.0001,'r+');
ylabel('Addition property');
% Scaling property
xs=2*x;
ya=conv(xs,h);
tt=t(1)+t(1):0.0001:t(end)+t(end);
subplot(6,1,5);
plot(tt,ya*0.0001);
yb=2*y;
hold on
plot(tt,ya*0.0001,'r+');
ylabel('Scaling property');% Time-invariance
t=-1.2:0.0001:1.2;
x1=zeros(size(t));
x1(t>=-0.8 & t<=1.2)=1;
y1=conv(x1,h);
tt=t(1)+t(1):0.0001:t(end)+t(end);
subplot(6,1,6);
plot((1:length(y1))*0.0001,y1*0.0001);
hold on;
pad=zeros(1,0.2/0.0001);
y2=[pad y];
plot((1:length(y2))*0.0001,y2*0.0001,'r+');
ylabel('Time-invariance property');