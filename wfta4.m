function X=wfta4(x)
t=zeros(1,4,'double');
m=zeros(1,4,'double');
X=zeros(1,4,'double');
t(2)=x(1)+x(3);
t(3)=x(2)+x(4);
X(1)=t(2)+t(3);           
m(3)=x(1)-x(3);
m(4)=1i*(x(4)-x(2));   
X(2)=m(3)+m(4);
X(3)=t(2)-t(3);
X(4)=m(3)-m(4);