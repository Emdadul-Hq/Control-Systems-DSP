clc
clear all
k=5;
t=10;
u=2;
s=tf('s');
G=k/(t*s+1)
G2=k+s/(s^2+1/(t*s+1)+1/s)

impResponse=impulse(u*G)
stResponse=step(u*G)
pzOut=pzmap(u*G)

figure
subplot 311
impulse(u*G)

subplot 312
step(u*G)

subplot 323
pzmap(u*G)
grid on

figure
subplot 311
impulse(u*G2)

subplot 312
step(u*G2)

subplot 323
pzmap(u*G2)
grid on

