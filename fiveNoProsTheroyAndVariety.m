% function [sum , paixu]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U)
clc;clearvars;
format short;
lamda=1;
afa=1;
bta=1;
%增加决策者1对方案4的评价
% 56 65 有无前景完美  
x1L=[15,700 ,0.70;25,750 ,0.55;20,800 ,0.70;15,700 ,0.60;20,800 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
x1U=[30,1200,0.85;40,1300,0.70;35,1400,0.80;30,1500,0.75;50,1600,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
x2L=[15,850 ,0.70;20,800 ,0.65;20,700 ,0.65;20,800 ,0.65;25,600 ,0.60;0 ,  0 ,   0;25,800 ,0.55;];
x2U=[30,1400,0.80;40,1600,0.85;35,1400,0.75;40,1500,0.80;40,1500,0.70;0 ,  0 ,   0;50,1600,0.65;];
x3L=[15,800 ,0.65;0 ,  0 ,   0;20,750 ,0.65;20,700 ,0.70;04 ,  0 ,   0;15,900 ,0.60;25,950 ,0.55;];
x3U=[30,1500,0.80;0 ,  0 ,   0;35,1500,0.80;35,1400,0.85;0 ,  0 ,   0;35,1600,0.70;50,1700,0.65;];
x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;20,650 ,0.55;15,550 ,0.70;25,700 ,0.50;25,950 ,0.55;];
x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;45,1500,0.70;35,1200,0.85;50,1500,0.65;45,1800,0.70;];
x5L=[20,800 ,0.60;0 ,  0 ,   0;0 ,  0 ,   0;25,700 ,0.65;25,800 ,0.65;0 ,   0,   0; 0,   0,   0;];
x5U=[35,1500,0.80;0 ,  0 ,   0;0 ,  0 ,   0;35,1600,0.75;40,1500,0.80;0 ,   0,   0; 0,   0,   0;];
%% 规范化
z_sum=zeros(1,15);
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
    z_sum(13)=z_sum(13)+x5L(j,1)+x5U(j,1);
    z_sum(14)=z_sum(14)+x5L(j,2)+x5U(j,2);
    z_sum(15)=z_sum(15)+x5L(j,3)+x5U(j,3);
end

for i=1:3
    z_sum(i)=z_sum(i)/10;
end
for i=4:6
    z_sum(i)=z_sum(i)/12;
end
for i=7:9
    z_sum(i)=z_sum(i)/10;
end
for i=10:12
    z_sum(i)=z_sum(i)/8;
end
for i=13:15
    z_sum(i)=z_sum(i)/6;
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
% disp('c1L');disp(c1L);disp('c1U');disp(c1U);
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

c5L=zeros(7,3);
c5U=zeros(7,3);
for i=1:7
    for j=1:2
        if(x5L(i,j)~=0)
            c5L(i,j)=(-x5U(i,j)+z_sum(12+j))/abs(z_sum(12+j));
            c5U(i,j)=(-x5L(i,j)+z_sum(12+j))/abs(z_sum(12+j));
        end
    end
    if(x5L(i,3)~=0)
        c5L(i,3)=(x5L(i,3)-z_sum(3*5))/abs(z_sum(15));
        c5U(i,3)=(x5U(i,3)-z_sum(3*5))/abs(z_sum(15));
    end
end

r1L=zeros(7,3);r1U=zeros(7,3);
r2L=zeros(7,3);r2U=zeros(7,3);
r3L=zeros(7,3);r3U=zeros(7,3);
r4L=zeros(7,3);r4U=zeros(7,3);
r5L=zeros(7,3);r5U=zeros(7,3);

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
        r5L(i,j)=c5L(i,j)/(max([abs(c5L(1,j)),abs(c5L(2,j)),abs(c5L(3,j)),abs(c5L(4,j)),abs(c5L(5,j)),abs(c5L(6,j)),abs(c5L(7,j)),abs(c5U(1,j)),abs(c5U(2,j)),abs(c5U(3,j)),abs(c5U(4,j)),abs(c5U(5,j)),abs(c5U(6,j)),abs(c5U(7,j))]));
        r5U(i,j)=c5U(i,j)/(max([abs(c5L(1,j)),abs(c5L(2,j)),abs(c5L(3,j)),abs(c5L(4,j)),abs(c5L(5,j)),abs(c5L(6,j)),abs(c5L(7,j)),abs(c5U(1,j)),abs(c5U(2,j)),abs(c5U(3,j)),abs(c5U(4,j)),abs(c5U(5,j)),abs(c5U(6,j)),abs(c5U(7,j))]));
    end
end
disp('r1L');disp(r1L);disp('r1Lend');disp('r1U');disp(r1U);disp('r1Uend');
disp('r2L');disp(r2L);disp('r2Lend');disp('r2U');disp(r2U);disp('r2Uend');
disp('r3L');disp(r3L);disp('r3Lend');disp('r3U');disp(r3U);disp('r3Uend');
disp('r4L');disp(r4L);disp('r4Lend');disp('r4U');disp(r4U);disp('r4Uend');
disp('r5L');disp(r5L);disp('r5Lend');disp('r5U');disp(r5U);disp('r5Uend');
RL=cat(3,r1L,r2L,r3L,r4L,r5L);RU=cat(3,r1U,r2U,r3U,r4U,r5U);
%% 规范化
% 求正负靶心
r1_RfpL=zeros(1,3);r1_RfnL=zeros(1,3);
r2_RfpL=zeros(1,3);r2_RfnL=zeros(1,3);
r3_RfpL=zeros(1,3);r3_RfnL=zeros(1,3);
r4_RfpL=zeros(1,3);r4_RfnL=zeros(1,3);
r5_RfpL=zeros(1,3);r5_RfnL=zeros(1,3);
for i=1:3
    r1_RfpL(i)=max([r1L(1,i),r1L(2,i),r1L(3,i),r1L(4,i),r1L(5,i)]);
    r1_RfnL(i)=min([r1L(1,i),r1L(2,i),r1L(3,i),r1L(4,i),r1L(5,i)]);
    r2_RfpL(i)=max([r2L(1,i),r2L(2,i),r2L(3,i),r2L(4,i),r2L(5,i),r2L(7,i)]);
    r2_RfnL(i)=min([r2L(1,i),r2L(2,i),r2L(3,i),r2L(4,i),r2L(5,i),r2L(7,i)]);
    r3_RfpL(i)=max([r3L(1,i),r3L(3,i),r3L(4,i),r3L(6,i),r3L(7,i)]);
    r3_RfnL(i)=min([r3L(1,i),r3L(3,i),r3L(4,i),r3L(6,i),r3L(7,i)]);
    r4_RfpL(i)=max([r4L(4,i),r4L(5,i),r4L(6,i),r4L(7,i)]);
    r4_RfnL(i)=min([r4L(4,i),r4L(5,i),r4L(6,i),r4L(7,i)]);
    r5_RfpL(i)=max([r5L(1,i),r5L(4,i),r5L(5,i)]);
    r5_RfnL(i)=min([r5L(1,i),r5L(4,i),r5L(5,i)]);
end
r1_RfpU=zeros(1,3);r1_RfnU=zeros(1,3);
r2_RfpU=zeros(1,3);r2_RfnU=zeros(1,3);
r3_RfpU=zeros(1,3);r3_RfnU=zeros(1,3);
r4_RfpU=zeros(1,3);r4_RfnU=zeros(1,3);
r5_RfpU=zeros(1,3);r5_RfnU=zeros(1,3);
for i=1:3
    r1_RfpU(i)=max([r1U(1,i),r1U(2,i),r1U(3,i),r1U(4,i),r1U(5,i)]);
    r1_RfnU(i)=min([r1U(1,i),r1U(2,i),r1U(3,i),r1U(4,i),r1U(5,i)]);
    r2_RfpU(i)=max([r2U(1,i),r2U(2,i),r2U(3,i),r2U(4,i),r2U(5,i),r2U(7,i)]);
    r2_RfnU(i)=min([r2U(1,i),r2U(2,i),r2U(3,i),r2U(4,i),r2U(5,i),r2U(7,i)]);
    r3_RfpU(i)=max([r3U(1,i),r3U(3,i),r3U(4,i),r3U(6,i),r3U(7,i)]);
    r3_RfnU(i)=min([r3U(1,i),r3U(3,i),r3U(4,i),r3U(6,i),r3U(7,i)]);
    r4_RfpU(i)=max([r4U(4,i),r4U(5,i),r4U(6,i),r4U(7,i)]);
    r4_RfnU(i)=min([r4U(4,i),r4U(5,i),r4U(6,i),r4U(7,i)]);
    r5_RfpU(i)=max([r5U(1,i),r5U(4,i),r5U(5,i)]);
    r5_RfnU(i)=min([r5U(1,i),r5U(4,i),r5U(5,i)]);
end
RfpL=[r1_RfpL;r2_RfpL;r3_RfpL;r4_RfpL;r5_RfpL;];RfpU=[r1_RfpU;r2_RfpU;r3_RfpU;r4_RfpU;r5_RfpU;];
RfnL=[r1_RfnL;r2_RfnL;r3_RfnL;r4_RfnL;r5_RfnL;];RfnU=[r1_RfnU;r2_RfnU;r3_RfnU;r4_RfnU;r5_RfnL;];
disp('RfpL');disp(RfpL);disp('RfpU');disp(RfpU);
disp('RfnL');disp(RfnL);disp('RfnU');disp(RfnU);
% 求灰色关联度
minP=[100,120,120,120,120];maxP=zeros(1,5);
for k=1:5
    for i=1:7
        for j=1:3
            if(RL(i,j,k)~=0)
                if(maxP(k)<getdis(RL(i,j,k),RU(i,j,k),RfpL(k,j),RfpU(k,j)))
                    maxP(k)=getdis(RL(i,j,k),RU(i,j,k),RfpL(k,j),RfpU(k,j));
                end
                if(minP(k)>getdis(RL(i,j,k),RU(i,j,k),RfpL(k,j),RfpU(k,j)))
                    minP(k)=getdis(RL(i,j,k),RU(i,j,k),RfpL(k,j),RfpU(k,j));
                end
            end            
        end
    end
end
minN=[120,120,120,120,120];maxN=zeros(1,5);
for k=1:5
    for i=1:7
        for j=1:3
            if(RL(i,j,k)~=0)
                if(maxN(k)<getdis(RL(i,j,k),RU(i,j,k),RfnL(k,j),RfnU(k,j)))
                    maxN(k)=getdis(RL(i,j,k),RU(i,j,k),RfnL(k,j),RfnU(k,j));
                end
                if(minN(k)>getdis(RL(i,j,k),RU(i,j,k),RfnL(k,j),RfnU(k,j)))
                    minN(k)=getdis(RL(i,j,k),RU(i,j,k),RfnL(k,j),RfnU(k,j));
                end                
            end            
        end
    end
end
disp('minP');disp(minP);disp('maxP');disp(maxP);
disp('minN');disp(minN);disp('maxN');disp(maxN);
kesy_p=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
kesy_n=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
for k=1:5
    for i=1:7
        for j=1:3
            if(RL(i,j,k)~=0)
                kesy_p(i,j,k)=(minP(k)+0.5*maxP(k))/(getdis(RL(i,j,k),RU(i,j,k),RfpL(k,j),RfpU(k,j))+0.5*maxP(k));
                kesy_n(i,j,k)=(minN(k)+0.5*maxN(k))/(getdis(RL(i,j,k),RU(i,j,k),RfnL(k,j),RfnU(k,j))+0.5*maxN(k));
            end
        end
    end
end
disp('kesy_p*****************************');disp(kesy_p);
disp('kesy_n*****************************');disp(kesy_n);

%% 正负前景价值矩阵
% v1p=zeros(7,3);v1n=zeros(7,3);
% v2p=zeros(7,3);v2n=zeros(7,3);
% v3p=zeros(7,3);v3n=zeros(7,3);
% v4p=zeros(7,3);v4n=zeros(7,3);
% v5p=zeros(7,3);v5n=zeros(7,3);
vp_=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
vn_=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
for k=1:5
    for i=1:7
        for j=1:3
            if(RL(i,j,k)~=0)
                vp_(i,j,k)=(1-kesy_n(i,j,k))^afa;
                vn_(i,j,k)=-lamda*(1-kesy_p(i,j,k))^bta;
            end
        end
    end
end
disp('vp*******************');disp(vp_);disp('vn*******************');disp(vn_);
v1p=vp_(:,:,1);v2p=vp_(:,:,2);v3p=vp_(:,:,3);v4p=vp_(:,:,4);v5p=vp_(:,:,5);
v1n=vn_(:,:,1);v2n=vn_(:,:,2);v3n=vn_(:,:,3);v4n=vn_(:,:,4);v5n=vn_(:,:,5);
% for i=1:7
%     for j=1:3
%         if(r1L(i,j)~=0)
%             v1p(i,j)=(getdis(r1L(i,j),r1U(i,j),r1_RfnL(j),r1_RfnU(j)))^afa;
%             v1n(i,j)=-lamda*(getdis(r1L(i,j),r1U(i,j),r1_RfpL(j),r1_RfpU(j)))^bta;
%         end
%         if(r2L(i,j)~=0)
%             v2p(i,j)=(getdis(r2L(i,j),r2U(i,j),r2_RfnL(j),r2_RfnU(j)))^afa;
%             v2n(i,j)=-lamda*(getdis(r2L(i,j),r2U(i,j),r2_RfpL(j),r2_RfpU(j)))^bta;
%         end
%         if(r3L(i,j)~=0)
%             v3p(i,j)=(getdis(r3L(i,j),r3U(i,j),r3_RfnL(j),r3_RfnU(j)))^afa;
%             v3n(i,j)=-lamda*(getdis(r3L(i,j),r3U(i,j),r3_RfpL(j),r3_RfpU(j)))^bta;
%         end
%         if(r4L(i,j)~=0)
%             v4p(i,j)=(getdis(r4L(i,j),r4U(i,j),r4_RfnL(j),r4_RfnU(j)))^afa;
%             v4n(i,j)=-lamda*(getdis(r4L(i,j),r4U(i,j),r4_RfpL(j),r4_RfpU(j)))^bta;
%         end
%         if(r5L(i,j)~=0)
%             v5p(i,j)=(getdis(r5L(i,j),r5U(i,j),r5_RfnL(j),r5_RfnU(j)))^afa;
%             v5n(i,j)=-lamda*(getdis(r5L(i,j),r5U(i,j),r5_RfpL(j),r5_RfpU(j)))^bta;
%         end
%     end
% end
% disp('v1p');disp(v1p);disp('v1n');disp(v1n);disp('v2p');disp(v2p);disp('v2n');disp(v2n);
% disp('v3p');disp(v3p);disp('v3n');disp(v3n);disp('v4p');disp(v4p);disp('v4n');disp(v4n);
% disp('v5p');disp(v5p);disp('v5n');disp(v5n);
vp=cat(3,v1p,v2p,v3p,v4p,v5p);vn=cat(3,v1n,v2n,v3n,v4n,v5n);

%% 属性权重的计算
v1p_tmp=zeros(1,3);v1n_tmp=zeros(1,3);
v2p_tmp=zeros(1,3);v2n_tmp=zeros(1,3);
v3p_tmp=zeros(1,3);v3n_tmp=zeros(1,3);
v4p_tmp=zeros(1,3);v4n_tmp=zeros(1,3);
v5p_tmp=zeros(1,3);v5n_tmp=zeros(1,3);
for j=1:3
    for i=1:7
        v1p_tmp(j)=v1p_tmp(j)+v1p(i,j);
        v2p_tmp(j)=v2p_tmp(j)+v2p(i,j);
        v3p_tmp(j)=v3p_tmp(j)+v3p(i,j);
        v4p_tmp(j)=v4p_tmp(j)+v4p(i,j);
        v5p_tmp(j)=v5p_tmp(j)+v5p(i,j);
        
        v1n_tmp(j)=v1n_tmp(j)+v1n(i,j);
        v2n_tmp(j)=v2n_tmp(j)+v2n(i,j);
        v3n_tmp(j)=v3n_tmp(j)+v3n(i,j);
        v4n_tmp(j)=v4n_tmp(j)+v4n(i,j);
        v5n_tmp(j)=v5n_tmp(j)+v5n(i,j);
    end
end
disp('v1p_tmp');disp(v1p_tmp);disp('v1n_tmp');disp(v1n_tmp);
disp('v2p_tmp');disp(v2p_tmp);disp('v2n_tmp');disp(v2n_tmp);
disp('v3p_tmp');disp(v3p_tmp);disp('v3n_tmp');disp(v3n_tmp);
disp('v4p_tmp');disp(v4p_tmp);disp('v4n_tmp');disp(v4n_tmp);
disp('v5p_tmp');disp(v5p_tmp);disp('v5n_tmp');disp(v5n_tmp);
Aeq1=[1,1,1];
beq1=1;
lb=[0.30;0.30;0.28];
ub=[0.40;0.45;0.45];
% lb=[0.30;0.25;0.30];
% ub=[0.45;0.45;0.48];
% lb=[0.20;0.25;0.20];
% ub=[0.45;0.40;0.40];
x1_0=[0.3,0.3,0.4];
[x1,fval1]=fmincon(@(x1)fiveAttributeWeightNop(v1p,v1n,x1,1),x1_0,[],[],Aeq1,beq1,lb,ub);
disp('最优解x1');disp(x1);
disp('最优解fval1');disp(fval1);

Aeq2=[1,1,1];
beq2=1;
lb2=[0.25;0.28;0.28];
ub2=[0.38;0.40;0.38];
%lb2=[0.28;0.30;0.20];
%ub2=[0.40;0.42;0.38];
x2_0=[0.3,0.3,0.4];
[x2,fval2]=fmincon(@(x2)fiveAttributeWeightNop(v2p,v2n,x2,2),x2_0,[],[],Aeq2,beq2,lb2,ub2);

disp('最优解x2');disp(x2);
disp('最优解fval2');disp(fval2);

Aeq3=[1,1,1];
beq3=1;
lb3=[0.30;0.25;0.25];
ub3=[0.42;0.45;0.35];
% lb3=[0.30;0.25;0.30];
% ub3=[0.42;0.45;0.43];
x3_0=[0.3,0.3,0.4];
[x3,fval3]=fmincon(@(x3)fiveAttributeWeightNop(v3p,v3n,x3,3),x3_0,[],[],Aeq3,beq3,lb3,ub3);
disp('最优解x3');disp(x3);
disp('最优解fval3');disp(fval3);

Aeq4=[1,1,1];
beq4=1;
lb4=[0.25;0.30;0.30];
ub4=[0.37;0.45;0.42];
% lb4=[0.28;0.22;0.30];
% ub4=[0.45;0.45;0.45];
x4_0=[0.3,0.3,0.4];
[x4,fval4]=fmincon(@(x4)fiveAttributeWeightNop(v4p,v4n,x4,4),x4_0,[],[],Aeq4,beq4,lb4,ub4);
disp('最优解x4');disp(x4);
disp('最优解fval4');disp(fval4);

 
Aeq5=[1,1,1];
beq5=1;
lb5=[0.25;0.27;0.30];
ub5=[0.40;0.45;0.40];
% lb4=[0.28;0.22;0.30];
% ub4=[0.45;0.45;0.45];
x5_0=[0.3,0.3,0.4];

[x5,fval5]=fmincon(@(x5)fiveAttributeWeightNop(v5p,v5n,x5,5),x5_0,[],[],Aeq5,beq5,lb5,ub5);
disp('最优解x5');disp(x5);
disp('最优解fval5');disp(fval5);
% f是各专家确定的属性权重矩阵
f=[x1;x2;x3;x4;x5];
disp('属性权重f');disp(f);
% fp是各专家属性权重的正负决策权重
fp=zeros(5,3);fn=zeros(5,3);
for i=1:5
    for j=1:3
        fp(i,j)=f(i,j);
        fn(i,j)=f(i,j);
    end
end
disp('fp');disp(fp);
disp('fn');disp(fn);
%% 修正后的专家权重计算方法
U=zeros(7,5);
for k=1:5
    for i=1:7
        for j=1:3
            if(vp(i,j,k)~=0)
                U(i,k)=U(i,k)+vp(i,j,k)*fp(k,j)+vn(i,j,k)*fn(k,j);
            end
        end
    end
end
disp('U');disp(U);
Aeq=[1,1,1,1,1];
beq=1;
lb=[0.15;0.15;0.15;0.15;0.15];
ub=[0.25;0.25;0.25;0.25;0.25];
x0=[0.2,0.2,0.2,0.2,0.2];


[rou,fval]=fmincon(@(rou)fiveExpertWeight(U,rou),x0,[],[],Aeq,beq,lb,ub);
disp('专家权重rou');disp(rou);
disp('最小化总偏差fval');disp(fval);

%% 计算各方案的前景价值之和
sum=zeros(1,7);
% k为专家，j为属性  将各决策者下每个属性相加再乘以决策者权重得到各方案的最终值
for i=1:7
    for k=1:5
        for j=1:3
            sum(i)=sum(i)+(vp(i,j,k)*fp(k,j)+vn(i,j,k)*fn(k,j))*rou(k);
        end
    end
end
%规范化
sum(1)=sum(1)/(rou(1)+rou(2)+rou(3)+rou(5));
sum(2)=sum(2)/(rou(1)+rou(2));
sum(3)=sum(3)/(rou(1)+rou(2)+rou(3));
sum(4)=sum(4)/(rou(1)+rou(2)+rou(3)+rou(4)+rou(5));
sum(5)=sum(5)/(rou(1)+rou(4)+rou(5));
sum(6)=sum(6)/(rou(3)+rou(4));
sum(7)=sum(7)/(rou(2)+rou(3)+rou(4));


% 个人决策顺序对比
v_s=zeros(5,7);
for k=1:5
    for i=1:7
        for j=1:3
            v_s(k,i)=v_s(k,i)+vp(i,j,k)*fp(k,j)+vn(i,j,k)*fn(k,j);
        end
    end
end
disp('个人决策顺序v_s');disp(v_s);

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
% xlswrite('output.xlsx',v_s);
% xlswrite('output.xlsx',sum);


