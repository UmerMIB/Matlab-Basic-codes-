% Fourier Synthesis of Square Wave.
tt=5000; %Total Simulation Run
T=500; %Time period of sine component
out=zeros(1,tt);
% Square wave synthesis equation. You can add and delete harmonics in this equation.
for t=1:1:tt
s= sin(2*pi*t/T)+(1/3)*(sin(2*3*pi*t/T))+ (1/5)*(sin(2*5*pi*t/T))+(1/7)*(sin(2*7*pi*t/T))+(1/9)*(sin(2*9*pi*t/T));
out(t)=s;
end
plot(1:tt,out);
xlabel('Time')
ylabel('Amplitude')
title('Fourier Synthesis of Square Wave')