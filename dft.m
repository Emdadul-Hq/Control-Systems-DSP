clc
clear all
close all
x= input(' Enter the sequence:')
n= input(' Enter the length of dft:')
k=fft(x,n)
stem(k)
ylabel(' Imaginary axis...')
xlabel('Real axis')
disp(k)
grid on