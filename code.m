clc
clear all
u=randn(1000,1);
s1=[zeros(1,20), u' ,zeros(1,80)];
s2=[zeros(1,100), u'];

v=randn(1000,1);
s3=[zeros(1,50), v' ,zeros(1,50)];
s4=[zeros(1,75), v' ,zeros(1,25)];

w=randn(1000,1);
s5=[zeros(1,75), w' ,zeros(1,25)];
s6=[zeros(1,85), w' ,zeros(1,15)];

s7 = s1+s3+s5;
s8 = s2+s4+s6;
c=xcorr(s7,s8,'unbiased');
stem(c);
xlabel('n-->');
ylabel('Amplitude-->');
count=0;

for i=1:1:2199
    if c(i)>0.8
        count=count+1;
    end
end 
disp('Number of Sources');
disp(count);
        
        
        