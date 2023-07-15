function graph = Plot()
% Read the audio file
[x, Fs] = audioread('record1.wav');

% Calculate the time axis           indices/Fs
t = (0:length(x)-1) / Fs;

% Plot the recorded voice
plot(t, x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Recorded Voice');
end

