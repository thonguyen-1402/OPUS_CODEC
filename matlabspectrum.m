
clear; close all; clc;


filename = 'recorded_audio.wav'; % File name to read


[data, fs] = audioread(filename);
disp(['Audio loaded from ', filename]);


t = (0:length(data)-1) / fs; % Time vector


N = length(data);
Y = fft(data);
f = (0:N-1)*(fs/N);
energy_spectrum = abs(Y).^2 / N;


frame_duration = 0.02; % 20 ms
frame_length = round(frame_duration * fs); % số mẫu mỗi frame
num_frames = floor(length(data) / frame_length);

energy_time = zeros(1, num_frames);
time_axis = zeros(1, num_frames);

for i = 1:num_frames
    idx_start = (i-1)*frame_length + 1;
    idx_end = idx_start + frame_length - 1;
    frame = data(idx_start:idx_end);
    energy_time(i) = sum(frame.^2); % năng lượng từng frame
    time_axis(i) = (idx_start + idx_end)/(2*fs); % thời điểm giữa frame
end


figure;


subplot(4,1,1);
plot(t, data);
xlabel('Time (s)');
ylabel('Amplitude');
title('Recorded Audio Signal');
grid on;


subplot(4,1,2);
plot(f(1:floor(N/2)), abs(Y(1:floor(N/2))) / N);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum');
grid on;


subplot(4,1,3);
plot(f(1:floor(N/2)), energy_spectrum(1:floor(N/2)));
xlabel('Frequency (Hz)');
ylabel('Energy');
title('Energy Spectrum');
grid on;


subplot(4,1,4);
plot(time_axis, energy_time, '-o');
xlabel('Time (s)');
ylabel('Energy');
title('Energy over Time (per 20 ms frame)');
grid on;


disp('Playing back the recorded audio...');
sound(data, fs);
