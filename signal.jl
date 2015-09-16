#audio signal processing
using DSP, WAV, PyPlot # "using" makes the listed modules available for the
                       # user, like "import" in other languages

# Loading and plotting an audio signal
s, fs = wavread("test.wav")

plot(0:1/fs:(length(s)-1)/fs, s)
xlabel("Time [s]")

# PyPlot includes a specgram function, but let's use the native
# implementation from DSP.jl. The function below extracts a
# spectrogram with standard parameters for speech (25ms Hanning windows
# and 10ms overlap), then plots it and returns it .

function plot_spectrogram(s, fs)
    S = spectrogram(s[:,1], convert(Int, 25e-3*fs),
                    convert(Int, 10e-3*fs); window=hanning)
    t = time(S)
    f = freq(S)
    imshow(flipud(log10(power(S))), extent=[first(t), last(t),
             fs*first(f), fs*last(f)], aspect="auto")
    S
end
plot_spectrogram(s, fs)

# Now let's bandpass the signal to simulate telephone bandwidth
# and plot its spectrogram again
responsetype = Bandpass(300, 3400; fs=fs)
prototype = Butterworth(8)
telephone_filter = digitalfilter(responsetype, prototype)

# Let's take a look at the filter response now
ω = 0:0.01:pi # variables can have Unicode names!
              # This is typed in the notebook as \omega + tab.
H = freqz(telephone_filter, ω)

plot(fs/2*ω/pi, 20*log10(abs(H)))
xlabel("Frequency [Hz]")
ylabel("Gain [dB]")

# Filtering our signal with the filter
sf = filt(telephone_filter, s)

# Just to be sure the filter has done the right thing, let's see
# the spectrogram of the filtered signal
plot_spectrogram(sf, fs)

# IJulia still does not support playing audio, so we include
# some code to do it.
include("AudioDisplay.jl")

using AudioDisplay

audioplayer(s, fs)
audioplayer(sf, fs)
