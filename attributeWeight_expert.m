function [ out ] = attributeWeight_expert(vp,vn,x,n )
%方案区分度最大化求属性权重 
%对单个专家求每个方案的前景值与前景值平均值做方差，方差要最大，使每个方案的区分度最大化。
v=zeros(1,7);
for i=1:7
    for j=1:3
        v(i)=v(i)+vp(i,j)*pi_p(x(j))+vn(i,j)*pi_n(x(j));
    end
end
%1,2,3,5
if(n==1)
    v_av=(v(1)+v(2)+v(3)+v(4)+v(5)+v(6)+v(7))/4;
    out1=(v(1)-v_av)^2+(v(2)-v_av)^2+(v(3)-v_av)^2+(v(4)-v_av)^2+(v(5)-v_av)^2;
    out=-out1;
end

if(n==2)
    v_av=(v(1)+v(2)+v(3)+v(4)+v(5)+v(6)+v(7))/6;
    out1=(v(1)-v_av)^2+(v(2)-v_av)^2+(v(3)-v_av)^2+(v(4)-v_av)^2+(v(5)-v_av)^2+(v(7)-v_av)^2;
    out=-out1;
end

if(n==3)
    v_av=(v(1)+v(2)+v(3)+v(4)+v(5)+v(6)+v(7))/5;
    out1=(v(1)-v_av)^2+(v(3)-v_av)^2+(v(4)-v_av)^2+(v(6)-v_av)^2+(v(7)-v_av)^2;
    out=-out1;
end

if(n==4)
    v_av=(v(1)+v(2)+v(3)+v(4)+v(5)+v(6)+v(7))/4;
    out1=(v(4)-v_av)^2+(v(5)-v_av)^2+(v(6)-v_av)^2+(v(7)-v_av)^2;
    out=-out1;    
end

if(n==5)
    v_av=(v(1)+v(2)+v(3)+v(4)+v(5)+v(6)+v(7))/3;
    out1=(v(1)-v_av)^2+(v(4)-v_av)^2+(v(5)-v_av)^2;
    out=-out1;    
end

if(n==6)
    v_av=(v(1)+v(2)+v(3)+v(4)+v(5)+v(6)+v(7))/4;
    out1=(v(1)-v_av)^2+(v(3)-v_av)^2+(v(4)-v_av)^2+(v(5)-v_av)^2;
    out=-out1;    
end

if(n==7)
    v_av=(v(1)+v(2)+v(3)+v(4)+v(5)+v(6)+v(7))/5;
    out1=(v(1)-v_av)^2+(v(2)-v_av)^2+(v(4)-v_av)^2+(v(5)-v_av)^2+(v(7)-v_av)^2;
    out=-out1;    
end

if(n==8)
    v_av=(v(1)+v(2)+v(3)+v(4)+v(5)+v(6)+v(7))/3;
    out1=(v(1)-v_av)^2+(v(4)-v_av)^2+(v(7)-v_av)^2;
    out=-out1;    
end
end
