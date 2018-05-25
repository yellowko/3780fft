function X=pfa63(F)

%预分配内存
X=zeros(1,63,'double');
add163=repmat(int16(0),7,1);
add263=repmat(int16(0),9,1);

  for n2=0:8                                      %x(n1,n2)矩阵
        for n1=0:6
            add163(n1+1)=mod(9*n1+7*n2,63)+1;%加1因为MATLAB中数组下标是从1开始的
        end
        %add1
        F(add163)=wfta7(F(add163));
  end
    
   for n1=0:6
        for n2=0:8
            add263(n2+1)=mod(9*n1+7*n2,63)+1;
        end
       % add2
        F(add263)=wfta9(F(add263));
   end
    
   for k1=0:6
       for k2=0:8
           X(mod(36*k1+28*k2,63)+1)=F(mod(9*k1+7*k2,63)+1);
       end
   end
