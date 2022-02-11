clc;
clear all;
close all;
disp('The sequence from the user:');
xn=input('Enter the input sequence x(n):');
 

N=length(xn);

Xk=zeros(1,N);
iXk=zeros(1,N);
 
disp('The discrete fourier transform of x(n):');
disp(Xk);
t=0:N-1;
subplot(3,2,2);
stem(t,Xk);
ylabel ('Amplitude');
xlabel ('Time Index');
title ('X(k)');

magnitude=abs(Xk);

disp('The magnitude response of X(k):');
disp(magnitude);
t=0:N-1;
subplot(3,2,3);
stem(t,magnitude);
for k=0:N-1
    for n=0:N-1
        Xk(k+1)=Xk(k+1)+(xn(n+1)*exp((-i)*2*pi*k*n/N));
    end
end

t=0:N-1;
subplot(3,2,1);
stem(t,xn);
ylabel ('Amplitude');
xlabel ('Time Index');
title ('Input Sequence');
 
ylabel ('Amplitude');
xlabel ('K');
title ('Magnitude Response');

phase=angle(Xk);

disp('The phase response of X(k):');
disp(phase);
t=0:N-1;
subplot(3,2,4);
stem(t,phase);
ylabel ('Phase');
xlabel ('K');
title ('Phase Response');
