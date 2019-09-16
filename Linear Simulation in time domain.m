clear all;
num = [1 0 1]; %Defining the number of range
den = [2 3 1];
sys = tf(num, den); %Using Transfer Function
[u1, t1] = gensig('square', 2, 10, 0.1); %Generate SqWave
[u2, t2] = gensig('sin', 2, 10, 0.1);     %Generate SineWave
[u3, t3] = gensig('pulse', 2, 10, 0.1);    %Generate Pulse
lsim(sys, u1, t1);  %Linear Simulation in time domain
lsim(sys, u2, t2);
lsim(sys, u3, t3);