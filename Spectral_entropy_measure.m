% This script computes the entropy of any given distribution.

% Make a pure tone
pure_tone = zeros(1,1000);
pure_tone(200) = 1;


figure
plot(pure_tone)
xlabel('Frequency')
ylabel('Normalized Power')
entropy_pure_tone = -nansum(pure_tone .* log2(pure_tone));
title(['Simulated pure tone spectra, entropy = ' num2str(entropy_pure_tone) ])


% Make a harmonic complex
harmonic_complex = zeros(1,1000);
harmonic_complex(200:200:1000) = 1;
norm_factor = sum(harmonic_complex);
harmonic_complex = harmonic_complex ./ norm_factor;

figure
plot(harmonic_complex)
xlabel('Frequency')
ylabel('Normalized Power')
entropy_harmonic_complex = -nansum(harmonic_complex .* log2(harmonic_complex));
title(['Simulated complex tone spectra, entropy = ' num2str(entropy_harmonic_complex) ])

% Simulate white noise spectra
white_noise = ones(1,1000);
norm_factor = sum(white_noise);
white_noise = white_noise ./ norm_factor;

figure
plot(white_noise)
xlabel('Frequency')
ylabel('Normalized Power')
entropy_white_noise = -nansum(white_noise .* log2(white_noise));
title(['Simulated white noise spectra, entropy = ' num2str(entropy_white_noise) ])

% Simulate pink noise spectra
pink_noise = 1 - (1:1000)*.001;
norm_factor = sum(pink_noise);
pink_noise = pink_noise ./ norm_factor;

figure
plot(pink_noise)
xlabel('Frequency')
ylabel('Normalized Power')
entropy_pink_noise = -nansum(pink_noise .* log2(pink_noise));
title(['Simulated pink noise spectra, entropy = ' num2str(entropy_pink_noise) ])