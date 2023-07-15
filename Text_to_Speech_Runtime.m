function Text_to_Speech_Runtime()
    % Prompt the user to enter text
    myText = input('Enter the text to convert to speech: ', 's');

    % Set the speech rate
    rate = 1;

    % Convert text to speech
    Text_to_Speech(myText, rate);
end