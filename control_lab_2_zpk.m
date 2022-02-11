clc
clear all
p=[ -3.2+7.8j  -3.2-7.8j  -4.1+5.9j  -4.1-5.9j  -8 ];
z=[ -0.8+.43j  -0.8-.43j  -.6 ];
g=.5;

zero_pole_gain_1=zpk(z,p,g)

p2=[ 3.2+7.8j  3.2-7.8j  4.1+5.9j  4.1-5.9j  8 ];
z2=[ 0.8+.43j  0.8-.43j  .6 ];
g2=.5;
zero_pole_gain_2=zpk(z2,p2,g2);
subplot 211
step(zero_pole_gain_1);

subplot 212
step(zero_pole_gain_2);

s=tf('s')
H=(s-1)/((s+1)*(s+2))
figure
impulse(H)
hold on
step(H)
legend('impulse','step');
