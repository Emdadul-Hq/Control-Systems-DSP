clc
clear all
m=input('Enter the length of sequence required:');
for i=1:m
    x(1,i)=input('Enter the sequence: ')
end
n=[0: length(x)-1]

factor=input('Samping by factor:')

x_downsampled=[ ]

for i=1:factor:length(x)
    
    x_downsampled = [x_downsampled x(i)]
    
end
grid on
subplot 211
stem(n,x)
xlabel('n-->')
ylabel('Amplitude-->')
title('Origional Signal')
grid on

subplot 212
stem(0:length(x_downsampled)-1,x_downsampled)
xlabel('n-->')
ylabel('Amplitude-->')
title('Down Sampled Signal')
grid on