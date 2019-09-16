%LTI OF RC CIRCUIT
R = 10e3; 
C = 1e-6;
num = 1;
den = [R*C 1]; %RC circuit formula
[z,p,k] = tf2zp(num,den);
sys=tf(num,den); %usign Transfer Function
ir_system=impulse(sys);
[mag,phase]=bode(sys);
ylabel('Magnitude');
xlabel('Time');
title('LTI of RC circuit');
plot(ir_system,'g');
t = 0:.001:.1;
Vin=t<0.05;
% Response of circuit for square wave
lsim(num,den,Vin,t);
title('LTI of RC circuit');
