
clc
clear all
close all
warning off
Fs=8000; %Sampling frequency in hertz
ch=1; %Number of channels--2 options--1 (mono) or 2 (stereo)
datatype='uint8';
nbits=16;%38, 16, or 24
Nseconds=5; 
%to record audio data from an input device ...
...such as a microphone for processing in MATLAB
recorder=audiorecorder (Fs, nbits, ch);
disp('Start speaking.....')
%Record audio to audiorecorder object, ...
...hold control until recording completes
recordblocking (recorder, Nseconds);
disp('End of Recording......');
%Store recorded audio signal in numeric array
x=getaudiodata (recorder, datatype);
%write audio file
audiowrite('record1.wav',x, Fs);

% plotting the recorded voice
Plot();
