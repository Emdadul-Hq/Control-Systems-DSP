clc
clear all
syms p1;
syms p2;
syms p3;
syms lamda;
H1=510+(7.21*p1)+(.00142*p1*p1);
H2=310+(7.85*p2)+(.00194*p2*p2);
H3=78+(7.97*p3)+(.00482*p3*p3);

F1=H1*1.1;
F2=H2*1.0;
F3=H3*1.0;


dF1dp1 = diff(F1,p1) == lamda;
dF2dp2 = diff(F2,p2) == lamda;
dF3dp3 = diff(F3,p3) == lamda;
prompt = 'Input of delivering total power : ';
x = input(prompt);
 
summation = p1 + p2 + p3 == x;
result = solve(dF1dp1,dF2dp2,dF3dp3,summation);
result.lamda;
result.p1;
result.p2;
result.p3;
lam = double (result.lamda)
power1 = double (result.p1)
power2 = double (result.p2)
power3 = double (result.p3)