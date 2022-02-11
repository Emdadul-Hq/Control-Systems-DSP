clc
clear all
close all
y=input('Enter power demand: ');
x=input('Enter number of generators: ');
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

At= 1/((1/p(1,1))+(1/p(1,2))+(1/p(1,3))+(1/p(1,4)));
Bt= (q(1,1)/p(1,1))+(q(1,2)/p(1,2))+(q(1,3)/p(1,3))+(q(1,4)/p(1,4));
l= (At*y)+(At*Bt);

Pg1= (l-q(1,1))/p(1,1);
Pg2= (l-q(1,2))/p(1,2);
Pg3= (l-q(1,3))/p(1,3);
Pg4= (l-q(1,4))/p(1,4);

f1= (.5*p(1,1)*(Pg1^2))+(q(1,1)*Pg1)+r(1,1);
f2= (.5*p(1,2)*(Pg2^2))+(q(1,2)*Pg2)+r(1,2);
f3= (.5*p(1,3)*(Pg3^2))+(q(1,3)*Pg3)+r(1,3);
f4= (.5*p(1,4)*(Pg4^2))+(q(1,4)*Pg4)+r(1,4);

c= double(f1);
d= double(f2);
e= double(f3);
f= double(f4);

display (c)