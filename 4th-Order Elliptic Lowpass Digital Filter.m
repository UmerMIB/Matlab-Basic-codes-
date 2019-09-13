% Computation of z-transform
syms n;
f = n^4;
ztrans(f)
syms a z;
g = a^z;
ztrans(g)
syms a n w;
f = sin(a*n);
ztrans(f, w)
% For data sampled at 1000 Hz, plot the poles and zeros of a
% 4th-order elliptic low pass digital filter with cutoff frequency of 200 Hz,
% n3 dB of ripple in the pass band, and 30 dB of attenuation in the
% stop band.
[z,p,k] = ellip(4,3,30,200/500);
zplane(z,p);
title('4th-Order Elliptic Lowpass Digital Filter');
% To generate the same plot with a transfer function representation of the filter, use
[b,a] = ellip(4,3,30,200/500); % Transfer function
zplane(b,a)