% Fourier Transform of Audio File
% Load File
file = 'C:\Users\farhan\Downloads\Music\Kalimba.wav';
[y,Fs] = audioread(file); %Read Audio file and save data like sampling frequncy and duraation saved in y as N.Samples
Nsamps = length(y);
t = (1/Fs)*(1:Nsamps) %Prepare time data for plot
% Do Fourier Transform
y_fft = abs(fft(y)); %Retain Magnitude
y_fft = y_fft(1:Nsamps/2); %Discard Half of Points
f = Fs*(0:Nsamps/2-1)/Nsamps; %Prepare freq data for plot
% Plot Audio File in Time Domain
figure
plot(t, y,'G')
xlabel('Time (s)')
ylabel('Amplitude')
title('audio_file')
% Plot Audio File in Frequency Domain
figure
plot(f, y_fft)
xlim([0 1000])
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Frequency Response of audio_file')