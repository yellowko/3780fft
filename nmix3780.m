function X=nmix3780(F)

%Ԥ�����ڴ�
add1=repmat(int16(0),63,1);
add2=repmat(int16(0),60,1);
X=zeros(1,3780,'double');


  for n2=0:59                                      %x(n2,n1)����
        for n1=0:62
            add1(n1+1)=60*n1+n2+1;%��1��ΪMATLAB�������±��Ǵ�1��ʼ��
        end
        %add1
        F(add1)=pfa63(F(add1));
  end
   
  
   for k1=0:62                          %��ת����
        for n2=0:59
            temp=60*k1+n2+1;
            F(temp)=F(temp)*exp(-1i*2*pi*k1*n2/3780);       
        end
   end
   
   
   for n1=0:62
        for n2=0:59
            add2(n2+1)=60*n1+n2+1;
        end
       % add2
        F(add2)=pfa60(F(add2));
   end
   
   for k2=0:59
       for k1=0:62
           X(k1+63*k2+1)=F(60*k1+k2+1);
       end
   end
