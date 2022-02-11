clc
clear all
a=3;
s=2;
%FIRST ORDER
num_1=s;
deno_1=[a a*s];
h1=tf(num_1, deno_1)

%SECOND ORDER
num_2=s*s;
deno_2=[s*s 2*s a];
h2=tf(num_2, deno_2)

subplot 121
impulse(h1);
hold on
impulse(h2);
legend('first order','second order');
grid on

subplot 122
step(h1);
hold on
step(h2);
legend('first order','second order');
grid on