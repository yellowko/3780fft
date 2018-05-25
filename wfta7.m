function X=wfta7(x)
t=zeros(1,14,'double');
m=zeros(1,9,'double');
X=zeros(1,7,'double');

t(1)=x(2)+x(7);
t(2)=x(3)+x(6);
t(3)=x(4)+x(5);
t(4)=t(1)+t(2)+t(3);
t(5)=x(2)-x(7);
t(6)=x(3)-x(6);
t(7)=x(5)-x(4);
t(8)=t(1)-t(3);
t(9)=t(3)-t(2);
t(10)=t(5)+t(6)+t(7);
t(11)=t(7)-t(5);
t(12)=t(6)-t(7);

m(1)=x(1)+t(4);
m(2)=-1.166666666666667*t(4);            %(cos(2*pi/7)+cos(4*pi/7)+cos(6*pi/7))/3-1=-1.166666666666667

t(13)=-t(8)-t(9);
m(3)=0.790156468525400*t(8);     %(2*cos(2*pi/7)-cos(4*pi/7)-cos(6*pi/7))/3=0.790156468525400
m(4)=0.055854267289648*t(9);     %(cos(2*pi/7)-2*cos(4*pi/7)+cos(6*pi/7))/3=0.055854267289648
m(5)=0.734302201235752*t(13);    %(cos(2*pi/7)+cos(4*pi/7)-2*cos(6*pi/7))/3=0.734302201235752
s(1)=-m(3)-m(4);
s(2)=-m(3)-m(5);

m(6)=-1i*0.440958551844098*t(10);   %(sin(2*pi/7)+sin(4*pi/7)-sin(6*pi/7))/3=0.440958551844098

t(14)=-t(11)-t(12);
m(7)=1i*0.340872930623931*t(11);     %(2*sin(2*pi/7)-sin(4*pi/7)+sin(6*pi/7))/3=0.340872930623931
m(8)=1i*-0.533969360337725*t(12);     %(sin(2*pi/7)-2*sin(4*pi/7)-sin(6*pi/7))/3=-0.533969360337725
m(9)=1i*0.874842290961657*t(14);    %(sin(2*pi/7)+sin(4*pi/7)+2*sin(6*pi/7))/3=0.874842290961657
s(3)=-m(7)-m(8);
s(4)=m(7)+m(9);

s(5)=m(1)+m(2);
s(6)=s(5)-s(1);
s(7)=s(5)+s(2);
s(8)=s(5)+s(1)-s(2);
s(9)=m(6)-s(3);
s(10)=m(6)-s(4);
s(11)=m(6)+s(3)+s(4);
X(1)=m(1);
X(2)=s(6)+s(9);
X(3)=s(7)+s(10);
X(4)=s(8)-s(11);
X(5)=s(8)+s(11);
X(6)=s(7)-s(10);
X(7)=s(6)-s(9);