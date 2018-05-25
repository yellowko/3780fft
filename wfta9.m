function X=wfta9(x)
t=zeros(1,16,'double');
m=zeros(1,11,'double');
X=zeros(1,9,'double');

t(1)=x(2)+x(9);
t(2)=x(3)+x(8);
t(3)=x(4)+x(7);
t(4)=x(5)+x(6);
t(5)=t(1)+t(2)+t(4);
t(6)=x(2)-x(9);
t(7)=x(8)-x(3);
t(8)=x(4)-x(7);
t(9)=x(5)-x(6);
t(10)=t(6)+t(7)+t(9);
t(11)=t(1)-t(2);
t(12)=t(2)-t(4);
t(13)=t(7)-t(6);
t(14)=t(7)-t(9);

m(1)=x(1)+t(3)+t(5);
m(2)=1.5*t(3);            
m(3)=-t(5)/2;

t(15)=-t(12)-t(11);
m(4)=0.766044443118978*t(11);     %(2*cos(2*pi/9)-cos(4*pi/9)-cos(8*pi/9))/3=0.766044443118978
m(5)=0.939692620785908*t(12);     %(cos(2*pi/9)+cos(4*pi/9)-2*cos(8*pi/9))/3=0.939692620785908
m(6)=-0.173648177666930*t(15);    %(cos(2*pi/9)-2*cos(4*pi/9)+cos(8*pi/9))/3=-0.173648177666930
s(1)=-m(4)-m(5);
s(2)=m(6)-m(5);

m(7)=-1i*0.866025403784439*t(10);   %sin(6*pi/9)=0.866025403784439
m(8)=-1i*0.866025403784439*t(8);    %sin(6*pi/9)=0.866025403784439

t(16)=-t(13)+t(14);
m(9)=1i*0.642787609686539*t(13);     %sin(2*pi/9)=0.642787609686539
m(10)=1i*0.342020143325669*t(14);    %sin(8*pi/9)=0.342020143325669
m(11)=1i*0.984807753012208*t(16);    %sin(4*pi/9)=0.984807753012208
s(3)=-m(9)-m(10);
s(4)=m(10)-m(11);

s(5)=m(1)+2*m(3);       %�ο�����������

s(6)=s(5)-m(2);
s(7)=s(5)+m(3);
s(8)=s(6)-s(1);
s(9)=s(2)+s(6);
s(10)=s(1)-s(2)+s(6);

s(11)=m(8)-s(3);
s(12)=m(8)-s(4);
s(13)=m(8)+s(3)+s(4);

X(1)=m(1);
X(2)=s(8)+s(11);
X(3)=s(9)-s(12);
X(4)=s(7)+m(7);
X(5)=s(10)+s(13);
X(6)=s(10)-s(13);
X(7)=s(7)-m(7);
X(8)=s(9)+s(12);
X(9)=s(8)-s(11);