clear;clc;close all
N=3780;
n=0:N-1; 
xn=0.5*cos(15/200*pi*n)+cos(60/200*pi*n);
w=-1889:1890;
 
tdft=zeros(100,1);
tmix=zeros(100,1);
tfft=zeros(100,1);

for n=1:100
    tic
    dft(xn,3780);
    tdft(n)=toc;
    tic
    nmix3780(xn);
    tmix(n)=toc;
    tic
    fft(xn);
    tfft(n)=toc;
end

figure(1)
hold on
plot(1:100,tdft,'r')
plot(1:100,tmix,'b')
plot(1:100,tfft,'g')
legend('dft','nmix3780','fft')
hold off

a=fft(xn)/1890;
b=nmix3780(xn)/1890;
c=dft(xn,3780)/1890;

figure(2)
hold on
plot(w,fftshift(abs(a)),'g-*')
plot(w,fftshift(abs(b)),'b-o')
plot(w,fftshift(abs(c)),'r')
legend('fft','nmix3780','dft')
hold off

disp('平均计算时间:')
disp(['dft:',num2str(mean(tdft))])
disp(['nmix3780:',num2str(mean(tmix))])
disp(['fft:',num2str(mean(tfft))])
disp(['nmix3780算法和fft算法计算结果相似度，实部：',num2str(corr2(real(a),real(b))),...
    '虚部：',num2str(corr2(imag(a),imag(b)))])
disp(['nmix3780算法和dft算法计算结果相似度，实部：',num2str(corr2(real(b),real(c))),...
    '虚部：',num2str(corr2(imag(b),imag(c)))])
