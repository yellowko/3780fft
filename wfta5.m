function X=wfta5(x)
t=zeros(1,5,'double');
m=zeros(1,6,'double');
X=zeros(1,5,'double');

t(1)=x(2)+x(5);
t(2)=x(3)+x(4);
t(3)=x(2)-x(5);
t(4)=x(4)-x(3);
t(5)=t(1)+t(2);

m(1)=x(1)+t(5);

m(2)=-1.25*t(5);            %(cos(2*pi/5)+cos(4*pi/5))/2-1=-1.25
m(3)=0.559016994374947*(t(1)-t(2));     %(cos(2*pi/5)-cos(4*pi/5))/2=0.559016994374947
m(4)=-1i*0.951056516295154*(t(3)+t(4));     %sin(2*pi/5)=0.951056516295154
m(5)=-1i*1.538841768587627*t(4);            %sin(2*pi/5)+sin(4*pi/5)=1.538841768587627
m(6)=1i*0.363271264002680*t(3);            %sin(2*pi/5)-sin(4*pi/5)=0.363271264002680

s(3)=m(4)-m(5);
s(5)=m(4)+m(6);
s(1)=m(1)+m(2);
s(2)=s(1)+m(3);
s(4)=s(1)-m(3);

X(1)=m(1);
X(2)=s(2)+s(3);
X(3)=s(4)+s(5);
X(4)=s(4)-s(5);
X(5)=s(2)-s(3);