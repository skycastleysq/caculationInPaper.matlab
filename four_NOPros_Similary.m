% function [sum , paixuf]=four_Pros_SimilaryCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U)
clc;clearvars;
format short;
lamda=1;
afa=1;
bta=1;

x1L=[20,600 ,0.60;20,700 ,0.65;20,700 ,0.75;0 ,  0 ,   0;25,700 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
x1U=[35,1300,0.80;35,1400,0.80;40,1400,0.85;0 ,  0 ,   0;40,1500,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
x2L=[25,700 ,0.70;15,600 ,0.60;20,750 ,0.70;20,600 ,0.70;25,600 ,0.60;0 ,  0 ,   0;15,700 ,0.70;];
x2U=[40,1400,0.85;35,1300,0.75;35,1400,0.85;35,1300,0.85;45,1400,0.75;0 ,  0 ,   0;30,1400,0.85;];
x3L=[15,750 ,0.65;0 ,   0,   0;20,600 ,0.70;15,500 ,0.70;0 ,  0 ,   0;15,500 ,0.74;15,600 ,0.70;];
x3U=[30,1400,0.75;0 ,  0 ,   0;35,1500,0.80;35,1400,0.80;0 ,  0 ,   0;30,1200,0.85;30,1300,0.80;];
x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;15,650 ,0.65;20,750 ,0.70;20,550 ,0.70;15,600 ,0.70;];
x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;30,1600,0.85;35,1400,0.85;30,1300,0.80;35,1300,0.85;];
XL=cat(3,x1L,x2L,x3L,x4L);
XU=cat(3,x1U,x2U,x3U,x4U);
%disp('输入的评价矩阵如下：')
%disp(XL);%disp(XU);
featureMatrixOfExpert=zeros(7,4);
schemeNoOfEachExpert=zeros(1,4);
ExpertNoOfEachScheme=zeros(1,7);
for k=1:4
    for i=1:7
        if(XL(i,1,k)~=0)
            featureMatrixOfExpert(i,k)=1;
        end
    end
end
for k=1:4
    for i=1:7
           schemeNoOfEachExpert(k)= schemeNoOfEachExpert(k)+featureMatrixOfExpert(i,k);
    end
end
for i=1:7
    for k=1:4
           ExpertNoOfEachScheme(i)=ExpertNoOfEachScheme(i)+featureMatrixOfExpert(i,k);
    end
end
%disp(featureMatrixOfExpert); %disp(ExpertNoOfEachScheme);%disp(schemeNoOfEachExpert);
%% 规范化
z_sum=zeros(1,12);
% z_j_t
for j=1:7
    z_sum(1)=z_sum(1)+x1L(j,1)+x1U(j,1);
    z_sum(2)=z_sum(2)+x1L(j,2)+x1U(j,2);
    z_sum(3)=z_sum(3)+x1L(j,3)+x1U(j,3);
    z_sum(4)=z_sum(4)+x2L(j,1)+x2U(j,1);
    z_sum(5)=z_sum(5)+x2L(j,2)+x2U(j,2);
    z_sum(6)=z_sum(6)+x2L(j,3)+x2U(j,3);
    z_sum(7)=z_sum(7)+x3L(j,1)+x3U(j,1);
    z_sum(8)=z_sum(8)+x3L(j,2)+x3U(j,2);
    z_sum(9)=z_sum(9)+x3L(j,3)+x3U(j,3);
    z_sum(10)=z_sum(10)+x4L(j,1)+x4U(j,1);
    z_sum(11)=z_sum(11)+x4L(j,2)+x4U(j,2);
    z_sum(12)=z_sum(12)+x4L(j,3)+x4U(j,3);
end

for i=1:3
    z_sum(i)=z_sum(i)/(2*schemeNoOfEachExpert(1));
end
for i=4:6
    z_sum(i)=z_sum(i)/(2*schemeNoOfEachExpert(2));
end
for i=7:9
    z_sum(i)=z_sum(i)/(2*schemeNoOfEachExpert(3));
end
for i=10:12
    z_sum(i)=z_sum(i)/(2*schemeNoOfEachExpert(4));
end

% c_ij_t(L)  c_ij_t(U)
c1L=zeros(7,3);
c1U=zeros(7,3);
for i=1:7
    for j=1:2
        if(x1L(i,j)~=0)
            c1L(i,j)=(-x1U(i,j)+z_sum(j))/abs(z_sum(j));
            c1U(i,j)=(-x1L(i,j)+z_sum(j))/abs(z_sum(j));
        end
    end
    if(x1L(i,3)~=0)
        c1L(i,3)=(x1L(i,3)-z_sum(3))/abs(z_sum(3));
        c1U(i,3)=(x1U(i,3)-z_sum(3))/abs(z_sum(3));
    end
end
% %disp('c1L');%disp(c1L);%disp('c1U');%disp(c1U);
c2L=zeros(7,3);
c2U=zeros(7,3);
for i=1:7
    for j=1:2
        if(x2L(i,j)~=0)
            t=3+j;
            c2L(i,j)=(-x2U(i,j)+z_sum(t))/abs(z_sum(t));
            c2U(i,j)=(-x2L(i,j)+z_sum(t))/abs(z_sum(t));
        end
    end
    if(x2L(i,3)~=0)
        c2L(i,3)=(x2L(i,3)-z_sum(3*2))/abs(z_sum(3*2));
        c2U(i,3)=(x2U(i,3)-z_sum(3*2))/abs(z_sum(3*2));
    end
end

c3L=zeros(7,3);
c3U=zeros(7,3);
for i=1:7
    for j=1:2
        if(x3L(i,j)~=0)
            c3L(i,j)=(-x3U(i,j)+z_sum(6+j))/abs(z_sum(6+j));
            c3U(i,j)=(-x3L(i,j)+z_sum(6+j))/abs(z_sum(6+j));
        end
    end
    if(x3L(i,3)~=0)
        c3L(i,3)=(x3L(i,3)-z_sum(3*3))/abs(z_sum(9));
        c3U(i,3)=(x3U(i,3)-z_sum(3*3))/abs(z_sum(9));
    end
end

c4L=zeros(7,3);
c4U=zeros(7,3);
for i=1:7
    for j=1:2
        if(x4L(i,j)~=0)
            c4L(i,j)=(-x4U(i,j)+z_sum(9+j))/abs(z_sum(9+j));
            c4U(i,j)=(-x4L(i,j)+z_sum(9+j))/abs(z_sum(9+j));
        end
    end
    if(x4L(i,3)~=0)
        c4L(i,3)=(x4L(i,3)-z_sum(3*4))/abs(z_sum(12));
        c4U(i,3)=(x4U(i,3)-z_sum(3*4))/abs(z_sum(12));
    end
end


r1L=zeros(7,3);r1U=zeros(7,3);
r2L=zeros(7,3);r2U=zeros(7,3);
r3L=zeros(7,3);r3U=zeros(7,3);
r4L=zeros(7,3);r4U=zeros(7,3);

for i=1:7
    for j=1:3
        r1L(i,j)=c1L(i,j)/(max([abs(c1L(1,j)),abs(c1L(2,j)),abs(c1L(3,j)),abs(c1L(4,j)),abs(c1L(5,j)),abs(c1L(6,j)),abs(c1L(7,j)),abs(c1U(1,j)),abs(c1U(2,j)),abs(c1U(3,j)),abs(c1U(4,j)),abs(c1U(5,j)),abs(c1U(6,j)),abs(c1U(7,j))]));
        r1U(i,j)=c1U(i,j)/(max([abs(c1L(1,j)),abs(c1L(2,j)),abs(c1L(3,j)),abs(c1L(4,j)),abs(c1L(5,j)),abs(c1L(6,j)),abs(c1L(7,j)),abs(c1U(1,j)),abs(c1U(2,j)),abs(c1U(3,j)),abs(c1U(4,j)),abs(c1U(5,j)),abs(c1U(6,j)),abs(c1U(7,j))]));
        r2L(i,j)=c2L(i,j)/(max([abs(c2L(1,j)),abs(c2L(2,j)),abs(c2L(3,j)),abs(c2L(4,j)),abs(c2L(5,j)),abs(c2L(6,j)),abs(c2L(7,j)),abs(c2U(1,j)),abs(c2U(2,j)),abs(c2U(3,j)),abs(c2U(4,j)),abs(c2U(5,j)),abs(c2U(6,j)),abs(c2U(7,j))]));
        r2U(i,j)=c2U(i,j)/(max([abs(c2L(1,j)),abs(c2L(2,j)),abs(c2L(3,j)),abs(c2L(4,j)),abs(c2L(5,j)),abs(c2L(6,j)),abs(c2L(7,j)),abs(c2U(1,j)),abs(c2U(2,j)),abs(c2U(3,j)),abs(c2U(4,j)),abs(c2U(5,j)),abs(c2U(6,j)),abs(c2U(7,j))]));
        r3L(i,j)=c3L(i,j)/(max([abs(c3L(1,j)),abs(c3L(2,j)),abs(c3L(3,j)),abs(c3L(4,j)),abs(c3L(5,j)),abs(c3L(6,j)),abs(c3L(7,j)),abs(c3U(1,j)),abs(c3U(2,j)),abs(c3U(3,j)),abs(c3U(4,j)),abs(c3U(5,j)),abs(c3U(6,j)),abs(c3U(7,j))]));
        r3U(i,j)=c3U(i,j)/(max([abs(c3L(1,j)),abs(c3L(2,j)),abs(c3L(3,j)),abs(c3L(4,j)),abs(c3L(5,j)),abs(c3L(6,j)),abs(c3L(7,j)),abs(c3U(1,j)),abs(c3U(2,j)),abs(c3U(3,j)),abs(c3U(4,j)),abs(c3U(5,j)),abs(c3U(6,j)),abs(c3U(7,j))]));
        r4L(i,j)=c4L(i,j)/(max([abs(c4L(1,j)),abs(c4L(2,j)),abs(c4L(3,j)),abs(c4L(4,j)),abs(c4L(5,j)),abs(c4L(6,j)),abs(c4L(7,j)),abs(c4U(1,j)),abs(c4U(2,j)),abs(c4U(3,j)),abs(c4U(4,j)),abs(c4U(5,j)),abs(c4U(6,j)),abs(c4U(7,j))]));
        r4U(i,j)=c4U(i,j)/(max([abs(c4L(1,j)),abs(c4L(2,j)),abs(c4L(3,j)),abs(c4L(4,j)),abs(c4L(5,j)),abs(c4L(6,j)),abs(c4L(7,j)),abs(c4U(1,j)),abs(c4U(2,j)),abs(c4U(3,j)),abs(c4U(4,j)),abs(c4U(5,j)),abs(c4U(6,j)),abs(c4U(7,j))]));
    end
end

% %disp('r1L');%disp(r1L);%disp('r1Lend');%disp('r1U');%disp(r1U);%disp('r1Uend');
% %disp('r2L');%disp(r2L);%disp('r2Lend');%disp('r2U');%disp(r2U);%disp('r2Uend');
% %disp('r3L');%disp(r3L);%disp('r3Lend');%disp('r3U');%disp(r3U);%disp('r3Uend');
% %disp('r4L');%disp(r4L);%disp('r4Lend');%disp('r4U');%disp(r4U);%disp('r4Uend');
% %disp('r5L');%disp(r5L);%disp('r5Lend');%disp('r5U');%disp(r5U);%disp('r5Uend');
% %disp('r6L');%disp(r6L);%disp('r6Lend');%disp('r6U');%disp(r6U);%disp('r6Uend');
% %disp('r7L');%disp(r7L);%disp('r7Lend');%disp('r7U');%disp(r7U);%disp('r7Uend');
% %disp('r8L');%disp(r8L);%disp('r8Lend');%disp('r8U');%disp(r8U);%disp('r8Uend');
RL=cat(3,r1L,r2L,r3L,r4L);RU=cat(3,r1U,r2U,r3U,r4U);
%% 参考点
columnMax=zeros(4,3);
columnMin=zeros(4,3);
for k=1:4
    for j=1:3
        tmpMax=-20;
        tmpMin=20;
        for i=1:7
            if(XL(i,j,k)~=0)
                if(tmpMax<((RL(i,j,k)+RU(i,j,k))/2))
                    columnMax(k,j)=i;
                    tmpMax=(RL(i,j,k)+RU(i,j,k))/2;
                end
                if(tmpMin>((RL(i,j,k)+RU(i,j,k))/2))
                    columnMin(k,j)=i;
                    tmpMin=(RL(i,j,k)+RU(i,j,k))/2;
                end
            end
        end
    end
end
% %disp('columnMax');%disp(columnMax);
% %disp('columnMin');%disp(columnMin);
RfpL=zeros(4,3);RfpU=zeros(4,3);
RfnL=zeros(4,3);RfnU=zeros(4,3);
for k=1:4
    for j=1:3
        RfpL(k,j)=RL(columnMax(k,j),j,k);  RfpU(k,j)=RU(columnMax(k,j),j,k);
        RfnL(k,j)=RL(columnMin(k,j),j,k);  RfnU(k,j)=RU(columnMin(k,j),j,k);
    end
end
% %disp('RfpL');%disp(RfpL);%disp('RfpU');%disp(RfpU);
% %disp('RfnL');%disp(RfnL);%disp('RfnU');%disp(RfnU);



%% 正负前景价值矩阵
similartyP=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
similartyN=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
for k=1:4
    for i=1:7
        for j=1:3
            if(RL(i,j,k)~=0)
                similartyP(i,j,k)=similarty(RL(i,j,k),RU(i,j,k),RfpL(k,j),RfpU(k,j));
                similartyN(i,j,k)=similarty(RL(i,j,k),RU(i,j,k),RfnL(k,j),RfnU(k,j));
            end
        end
    end
end
disp('similartyP');disp(similartyP);
disp('similartyN');disp(similartyN);
vp_=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
vn_=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
for k=1:4
    for i=1:7
        for j=1:3
            if(RL(i,j,k)~=0)
                vp_(i,j,k)=similartyP(i,j,k)^afa;
                vn_(i,j,k)=-lamda*similartyN(i,j,k)^bta;
            end
        end
    end
end 
% %disp('vp_*******************');%disp(vp_);%disp('vn_*******************');%disp(vn_);
v1p=vp_(:,:,1);v2p=vp_(:,:,2);v3p=vp_(:,:,3);v4p=vp_(:,:,4);
v1n=vn_(:,:,1);v2n=vn_(:,:,2);v3n=vn_(:,:,3);v4n=vn_(:,:,4);
vp=cat(3,v1p,v2p,v3p,v4p);vn=cat(3,v1n,v2n,v3n,v4n);
%disp('vp*******************');%disp(vp);%disp('vn*******************');%disp(vn);
%% 属性权重的计算
Aeq1=[1,1,1];
beq1=1;
lb=[0.30;0.30;0.28];
ub=[0.40;0.45;0.45];
x1_0=[0.3,0.3,0.4];
[x1,fval1]=fmincon(@(x1)attributeWeightNopCommon(v1p,v1n,x1,1,featureMatrixOfExpert,schemeNoOfEachExpert),x1_0,[],[],Aeq1,beq1,lb,ub);
%disp('最优解x1');%disp(x1);
%disp('最优解fval1');%disp(fval1);

Aeq2=[1,1,1];
beq2=1;
lb2=[0.25;0.28;0.28];
ub2=[0.38;0.40;0.38];
x2_0=[0.3,0.3,0.4];
[x2,fval2]=fmincon(@(x2)attributeWeightNopCommon(v2p,v2n,x2,2,featureMatrixOfExpert,schemeNoOfEachExpert),x2_0,[],[],Aeq2,beq2,lb2,ub2);
%disp('最优解x2');%disp(x2);
%disp('最优解fval2');%disp(fval2);

Aeq3=[1,1,1];
beq3=1;
lb3=[0.30;0.25;0.25];
ub3=[0.42;0.45;0.35];
x3_0=[0.3,0.3,0.4];
[x3,fval3]=fmincon(@(x3)attributeWeightNopCommon(v3p,v3n,x3,3,featureMatrixOfExpert,schemeNoOfEachExpert),x3_0,[],[],Aeq3,beq3,lb3,ub3);
%disp('最优解x3');%disp(x3);
%disp('最优解fval3');%disp(fval3);

Aeq4=[1,1,1];
beq4=1;
lb4=[0.25;0.30;0.30];
ub4=[0.37;0.45;0.42];
x4_0=[0.3,0.3,0.4];
[x4,fval4]=fmincon(@(x4)attributeWeightNopCommon(v4p,v4n,x4,4,featureMatrixOfExpert,schemeNoOfEachExpert),x4_0,[],[],Aeq4,beq4,lb4,ub4);
%disp('最优解x4');%disp(x4);
%disp('最优解fval4');%disp(fval4);

% f是各专家确定的属性权重矩阵
f=[x1;x2;x3;x4;];
%disp('属性权重f');%disp(f);
% fp是各专家属性权重的正负决策权重
fp=zeros(4,3);fn=zeros(4,3);
for i=1:4
    for j=1:3
        fp(i,j)=f(i,j);
        fn(i,j)=f(i,j);
    end
end
%disp('fp');%disp(fp);
%disp('fn');%disp(fn);
%% 修正后的专家权重计算方法
U=zeros(7,4);
for k=1:4
    for i=1:7
        for j=1:3
            if(XL(i,j,k)~=0)
                U(i,k)=U(i,k)+vp(i,j,k)*fp(k,j)+vn(i,j,k)*fn(k,j);
            end
        end
    end
end
disp('U');disp(U);

Aeq=[1,1,1,1];
beq=1;
lb=[0.20;0.20;0.20;0.20;];
ub=[0.30;0.30;0.30;0.30;];
x0=[0.25,0.25,0.25,0.25]; 
[rou,fval]=fmincon(@(rou)fourExpertWeightCommon( U,rou,featureMatrixOfExpert ),x0,[],[],Aeq,beq,lb,ub);
%disp('专家权重rou');%disp(rou);
% %disp('最小化总偏差fval');%disp(fval);
vfinal=zeros(1,7);
for i=1:7
    for j=1:4
        if(U(i,j)~=0)
            vfinal(i)=vfinal(i)+U(i,j)*rou(j);
        end
    end
end
% vfinal是群体一致偏好
for i=1:7
    vfinal(i)=vfinal(i)/(rou(1)*featureMatrixOfExpert(i,1)+rou(2)*featureMatrixOfExpert(i,2)+rou(3)*featureMatrixOfExpert(i,3)+rou(4)*featureMatrixOfExpert(i,4));
end

Ud=zeros(7,4);
for i=1:7
    for j=1:4
        if(U(i,j)~=0)
            Ud(i,j)=rou(j)*(U(i,j)-vfinal(i))^2;
        end
    end
end
disp('专家偏差Ud');disp(Ud);
%% 计算各方案的前景价值之和
sum=zeros(1,7);
% k为专家，j为属性  将各决策者下每个属性相加再乘以决策者权重得到各方案的最终值
for i=1:7
    for k=1:4
        for j=1:3
            sum(i)=sum(i)+(vp(i,j,k)*fp(k,j)+vn(i,j,k)*fn(k,j))*rou(k);
        end
    end
end
%规范化
g=zeros(1,7);
for i=1:7
    g(i)=rou(1)*featureMatrixOfExpert(i,1)+rou(2)*featureMatrixOfExpert(i,2)+rou(3)*featureMatrixOfExpert(i,3)+rou(4)*featureMatrixOfExpert(i,4);
end
for i=1:7
    sum(i)=sum(i)/g(i);
end

% 个人决策顺序对比
v_s=zeros(4,7);
for k=1:4
    for i=1:7
        for j=1:3
            v_s(k,i)=v_s(k,i)+vp(i,j,k)*fp(k,j)+vn(i,j,k)*fn(k,j);
        end
    end
end
 %disp('个人决策顺序v_s');%disp(v_s);

sum_clone=sum;
for i=1:6
    for j=i+1:7
        if(sum_clone(j)>sum_clone(i))
            tmp=sum_clone(j);
            sum_clone(j)=sum_clone(i);
            sum_clone(i)=tmp;
        end
    end
end
paixu=zeros(1,7);
for i=1:7
    for j=1:7
        if(sum_clone(i)==sum(j))
            paixu(i)=j;
        end
    end
end
paixuf=0;
for i=1:7
    paixuf=paixuf+paixu(i)*(10^(7-i));
end
disp('方案最终前景值sum');disp(sum);
disp('最终排序顺序paixu');disp(paixuf);
sum_paixu=zeros(1,7);
for i=1:7
    sum_paixu(i)=sum(paixu(i));
end
disp('最终前景价值排序');disp(sum_paixu);
%end

