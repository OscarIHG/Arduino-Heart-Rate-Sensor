close all;
clear all;
clc;

timeMeasure = input('Enter the number of seconds to measure: ');

% Create serial port object
serialPort = serialport("COM3", 9600);
configureTerminator(serialPort, "LF"); 
flush(serialPort); % Clean serial port before start


% Initialize variables
figure;
i = 1;
reading = str2double(readline(serialPort)); % Read the first value
voltage(i) = reading;
plotHandle = plot(voltage);
xlim([0 timeMeasure]);
ylim([-3 7]);
xlabel('Seconds');
ylabel('Voltage');
grid on;

tic;
x(i) = toc;

% Loop for reading and plotting in real-time
while (1)
    i = i + 1;
    x(i) = toc;
    voltage(i) = str2double(readline(serialPort)); % Read value from serial port

    % Update plot in real time
    set(plotHandle, 'XData', x, 'YData', voltage);
    drawnow;

    pause(0.005);
    if x(i) > timeMeasure
        break;
    end
end

% Find peaks an calculate the heart pulse frequency
peaks = findpeaks(voltage);
pulseFrequency = length(peaks) * 60 / timeMeasure;
fprintf('The average pulse frequency is %d pulses per minute\n', pulseFrequency);
