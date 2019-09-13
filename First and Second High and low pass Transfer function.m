
close all;
% a numerator coefficients of transfer function
% b denominator coefficients of transfer function
% z is zero
% p is pole
% k is gain
% First Order High pass
b=[1 10];
a=[1 1000];
w = logspace(-1,4);
h = freqs(b,a,w);
mag = abs(h);
phase = angle(h);
subplot(2,1,1), loglog(w,mag)
subplot(2,1,2), semilogx(w,phase)
% First Order Low pass
b=[1 1000];
a=[1 10];
w = logspace(-1,4);
h = freqs(b,a,w);
mag = abs(h);
phase = angle(h);
figure
subplot(2,1,1), loglog(w,mag)
subplot(2,1,2), semilogx(w,phase)
% Second order low pass transfer function
b=[0 -10];
a=[1 1/20 100];
w = logspace(-1,4);
h = freqs(b,a,w);
mag = abs(h);
phase = angle(h);
subplot(2,1,1), loglog(w,mag)
subplot(2,1,2), semilogx(w,phase)
% Second order High pass transfer function
b=[1 0 0];
a=[1 1/20 100];
w = logspace(-1,4);
h = freqs(b,a,w);
mag = abs(h);
phase = angle(h);
subplot(2,1,1), loglog(w,mag)
subplot(2,1,2), semilogx(w,phase)
% Second order Band pass transfer function
b=[-1 0];
a=[1 1/20 100];
w = logspace(-1,4);
h = freqs(b,a,w);
mag = abs(h);
phase = angle(h);
subplot(2,1,1), loglog(w,mag)
subplot(2,1,2), semilogx(w,phase)
% Finding Zero and poles from transfer function
b=[-1 0];
a=[1 1/20 100];
[z,p,k] = tf2zp(b,a);
% Finding Transfer function from zero and pole
k=1;
z=[-10 -1000]';
p=[-100 -10000]';
[b,a] = zp2tf(z,p,k);
