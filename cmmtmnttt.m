clc
clear all
close all
syms f float
pd=input('Enter the value of power demand: ');
x=input('Enter the number of generators: ');
A=input('Enter the number A');
for i=1:1:x
p(i)=input('');
end
B=input('Enter the number B');
for i=1:1:x
q(i)=input('');
end
C=input('Enter the number C');
for i=1:1:x
r(i)=input('');
end

At= 1/((1/p(1))+(1/p(2))+(1/p(3))+(1/p(4)));
Bt= (q(1)/p(1))+(q(2)/p(2))+(q(3)/p(3))+(q(4)/p(4));
l= (At*pd)+(At*Bt);
At
Bt
l

Pg1= (l-q(1))/p(1);
Pg2= (l-q(2))/p(2);
Pg3= (l-q(3))/p(3);
Pg4= (l-q(4))/p(4);
Pg1
Pg2
Pg3
Pg4

f1= (.5*p(1)*(Pg1^2))+(q(1)*Pg1)+r(1);
f2= (.5*p(2)*(Pg2^2))+(q(2)*Pg2)+r(2);
f3= (.5*p(3)*(Pg3^2))+(q(3)*Pg3)+r(3);
f4= (.5*p(4)*(Pg4^2))+(q(4)*Pg4)+r(4);
f=4*(f1+f2+f3+f4);
u=num2str(f)
