# Digital Signal Processing Lab 1 - README

This repository contains MATLAB code and results for the first lab in Digital Signal Processing. The tasks focus on analyzing signals through statistical measures, autocorrelation, ergodicity, and spectral analysis, as well as processing audio signals.

---

## Project Overview

### Objectives
1. **Statistical Analysis of Signals**:
   - Compute the mean and power of sinusoidal signals and Gaussian noise.
   - Compare empirical results with theoretical expectations.

2. **Autocorrelation**:
   - Compute autocorrelation coefficients for sinusoidal and noise signals.
   - Use both empirical calculations and MATLAB's `xcorr`.

3. **Ergodicity**:
   - Analyze the convergence of sample means for sinusoidal signals.
   - Compute the mean squared error (MSE) for empirical estimates.

4. **Audio Signal Analysis**:
   - Segment audio signals into frames.
   - Analyze frame-wise mean, power, and spectral content.

---

## Repository Structure
```plaintext
├── code/
│   ├── ex1.m          # Task 1: Statistical mean and power
│   ├── ex2.m          # Task 2: Statistical analysis for modified φ
│   ├── ex3.m          # Task 3: Gaussian noise mean and power
│   ├── ex4.m          # Task 4: Autocorrelation analysis
│   ├── ex5.m          # Task 5: White noise analysis
│   ├── ex6.m          # Task 6: Ergodicity and MSE
│   ├── ex7.m          # Task 7: Audio signal segmentation
│   ├── ex8.m          # Task 8: Frame-wise mean and power
│   ├── ex9.m          # Task 9: Frame length comparison
│   ├── ex10.m         # Task 10: Histograms of mean and power
│   └── ex11.m         # Task 11: Spectral analysis using FFT
└── README.md                        # This README file
