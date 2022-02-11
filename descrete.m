clc
clear all
x=0:pi/30:2*pi;
y1=sin(x);
y2=cos(x);
y3=exp(x);
y4=sinc(x);

subplot(3,2,1);
stem(x,y1);
title('sine wave');
xlabel('x-->');
ylabel('Amplitude-->');

subplot(3,2,2);
stem(x,y2);
title('cosine wave');
xlabel('x-->');
ylabel('Amplitude-->');

subplot(3,2,3);
stem(x,y3);
title('exponential function');
xlabel('x-->');
ylabel('Amplitude-->');

subplot(3,2,4);
stem(x,y4);
title('sinc function');
xlabel('x-->');
ylabel('Amplitude-->');

unitstep=x>=0;
subplot(3,2,5);
stem(unitstep);
title('unitstep function');
xlabel('x-->');
ylabel('Amplitude-->');

n=-2:.5:2;
x=zeros(1,9);
x(1,5)=1;
x(1,3)=.5;
x(1,7)=.5;

subplot(3,2,6);
stem(n,x);
title('zeros');
xlabel('x-->');
ylabel('Amplitude-->');

