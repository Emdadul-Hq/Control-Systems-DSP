clc;
clear all;
close all;
%Get the sequence from user 
disp('The sequence from the user:');
xn=input('Enter the input sequence x(n):'); 
% To find the length of the sequence
N=length(xn); 
%To initilise an array of same size as that of input sequence
Xk=zeros(1,N);
iXk=zeros(1,N);
% Code block to find the IDFT of the sequence
for n=0:N-1
    for k=0:N-1
iXk(n+1)=iXk(n+1)+(Xk(k+1)*exp(i*2*pi*k*n/N));
    end
end
iXk=iXk./N;
%code block to plot the output sequence
t=0:N-1;
stem(t,xn);
ylabel ('Amplitude');
xlabel ('Time Index');
title ('IDFT sequence');
