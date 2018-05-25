function X=pfa60(F)

%预分配内存
X=zeros(1,60,'double');
add160=repmat(int16(0),3,1);
add260=repmat(int16(0),4,1);
add360=repmat(int16(0),5,1);

  for n3=0:4                                     %x(n3,n2,n1)矩阵
        for n2=0:3 
            for n1=0:2
                add160(n1+1)=mod(20*n1+15*n2+12*n3,60)+1;%加1因为MATLAB中数组下标是从1开始的
            
            end
        %add1
            F(add160)=wfta3(F(add160));
        end
  end
   
  
    for  n1=0:2                                 %x(n3,n2,n1)矩阵
        for  n3=0:4
            for n2=0:3
                add260(n2+1)=mod(20*n1+15*n2+12*n3,60)+1;%加1因为MATLAB中数组下标是从1开始的
            
            end
        %add1
            F(add260)=wfta4(F(add260));
        end
    end
  
    for n2=0:3                                  %x(n3,n2,n1)矩阵
        for  n1=0:2
            for n3=0:4
                add360(n3+1)=mod(20*n1+15*n2+12*n3,60)+1;%加1因为MATLAB中数组下标是从1开始的
            
            end
        %add1
            F(add360)=wfta5(F(add360));
        end
    end
   
   for n3=0:4
       for n2=0:3
           for n1=0:2
                X(mod(40*n1+45*n2+36*n3,60)+1)=F(mod(20*n1+15*n2+12*n3,60)+1);
           end
       end
   end
   
   