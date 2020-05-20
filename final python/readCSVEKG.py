import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
# from matplotlib.mlab import find
#import scipy as sy
from scipy import signal
from scipy import fftpack
import os
import csv
import os
import re
import time
import parabolic
# from signaltoolsmod import fftconvolve

def butter_lowpass(cutoff, fs, order=5):
    nyq = 0.5 * fs
    normal_cutoff = cutoff / nyq
    b, a = signal.butter(order, normal_cutoff, btype='low', analog=False)
    return b, a

def butter_lowpass_filter(data, cutoff, fs, order=5):
    b, a = butter_lowpass(cutoff, fs, order=order)
    y = signal.lfilter(b, a, data)
    return y

def freq_from_fft(sig, fs):
    # Compute Fourier transform of windowed signal
    windowed = sig * signal.blackmanharris(len(sig))
    f = fftpack.rfft(windowed)
    print(type(f))
    print(f)
    # Find the peak and interpolate to get a more accurate peak
    i = np.argmax(abs(f))  # Just use this for less-accurate, naive version
    true_i = parabolic(np.log(abs(f)), i)[0]

    # Convert to equivalent frequency
    return fs * true_i / len(windowed)


# def freq_from_crossings(sig, fs):
#
#     # Find all indices right before a rising-edge zero crossing
#     indices = find((sig[1:] >= 0) & (sig[:-1] < 0))
#
#     crossings = [i - sig[i] / (sig[i + 1] - sig[i]) for i in indices]
#
#     # Some other interpolation based on neighboring points might be better. Spline, cubic, whatever
#
#     return fs / mean(diff(crossings))

print('Hello world\n\n')

print(os.getcwd())
file_list = os.listdir(os.getcwd())
print('list of files in current directory: ', file_list)

df = pd.read_csv("center-left-low.csv", low_memory=False)  # This reads the csv file to a data frame , index_col='CH1'

# print(df)
# print(type(df))

# nparray1 = df.iloc[:,0:].values
# nparray1 = nparray1[:, 0]
nparray1 = df.iloc[:,1:].values
nparray1 = nparray1[:, 0]
#nparray2 = nparray2[2500:]
# print(nparray1)
# print(nparray2)
#print(type(nparray1))
# print("Old Array 1 Length: ", len(nparray1), " Old Array 2 length: ", len(nparray2))
# nparray1 = nparray1[::2]
#nparray2 = nparray2[::2]
#print(nparray)
#print(type(nparray))
# print("New Array 1 Length: ", len(nparray1), " New Array 2 length: ", len(nparray2))

# print(type(nparray1[2]))

# 40000 Samples per second


nparray2 = butter_lowpass_filter(nparray1, 5, 4000, order=5 )

N = 5500
nparray3 = np.convolve(nparray2, np.ones((N,))/N, mode='valid')  # find the rolling average of the array with window N

nparray2 = nparray2[2500:]
nparray3 = nparray3[2500:]
# nparray2 = np.copy(nparray2[2500:])
# nparray2 = np.copy(np.delete(nparray2, np.s_[:2500], 0))

# Regular - Convolve
nparray4 = np.zeros(len(nparray2))
i = 0
for x, y in zip(nparray2,nparray3):
    nparray4[i] = x - y
    i = i + 1

N = 10000
nparray5 = np.convolve(nparray4, np.ones((N,))/N, mode='valid')  # find the rolling average of the array with window N


N = len(nparray2)
freqs = np.fft.fftfreq(N, 1/4000)
freqs = freqs[1:((N//2))]
fft = np.abs(fftpack.fft(nparray2))
fft = fft[1:((N//2))]
# plt.plot(freqs, fft)
# plt.plot(nparray2)
# plt.plot(nparray4)
# plt.show()
# plt.clf()

dir = np.diff(nparray2)
# plt.plot(dir)
plt.plot(nparray2)
print("calc")
zeros = np.copy(dir)
print("calc")
i = 0
while i < (100000):
    i = i + 1
    if((dir[i] > 0 and dir[i-1] < 0) or (dir[i] < 0 and dir[i-1] > 0)):
        zeros[i] = 5
        
# list = []
# i = 0
# while i < len(zeros):
#     if(zeros[i] == 5):
#         list.append(i)
#
#     i = i + 1

plt.plot(zeros)
plt.show()

max = 0
rate = 0
for i, j in enumerate(freqs):
    if (j < 1.75 and j > .9):
        if(fft[i] > max):
            max = fft[i]
            rate = j * 60
print (rate)

"""
temp_fft = fftpack.fft(nparray2)

temp_psd = np.abs(temp_fft) ** 2

fftfreq = fftpack.fftfreq(len(temp_psd), 1. / 4000)
print(fftfreq)
i = fftfreq > 0

fig, ax = plt.subplots(1, 1, figsize=(8, 4))

print("hellp/n", fftfreq[i])
print(10 * np.log10(temp_psd[i]))

# max = temp_psd[1]
# place = 0
# for i,j in enumerate(fftfreq):
#     if (j > .8 and j < 2):
#         if (temp_psd[i] > max):
#             place = j
#             max = temp_psd[i]
#
# print(j)

ax.plot(fftfreq[i], 10 * np.log10(temp_psd[i]))

ax.set_xlim(0, 5)
ax.set_xlabel('Frequency (1/4000)')
ax.set_ylabel('PSD (dB)')

print(type(fftfreq))
print(ax)
plt.show()
"""
