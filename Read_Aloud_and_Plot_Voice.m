    % Prompt the user to enter the filename of the voice recording

    filename = input('Enter the filename of the voice recording (e.g., voice.wav): ', 's');
    disp(['The entered filename is: ' filename]);

    % Read the audio file
    [x, Fs] = audioread(filename);

    % Calculate the time axis
    t = (0:size(x, 1)-1) / Fs;

    % Plot the recorded voice
    plot(t, x);
    xlabel('Time (s)');
    ylabel('Amplitude');
    title('Recorded Voice');

    % Read the voice recording aloud
    sound(x, Fs);

