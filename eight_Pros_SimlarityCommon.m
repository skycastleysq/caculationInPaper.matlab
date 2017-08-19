function [sum , paixuf]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U)
% clc;clearvars;
format short;
lamda=2.25;
afa=0.88;
bta=0.88;

% x1L=[20,600 ,0.60;25,800 ,0.65;20,800 ,0.70;0 ,  0 ,   0;25,700 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
% x1U=[35,1300,0.80;35,1500,0.80;40,1400,0.85;0 ,  0 ,   0;40,1500,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
% x2L=[25,700 ,0.70;15,600 ,0.60;20,750 ,0.70;20,600 ,0.70;25,600 ,0.60;0 ,  0 ,   0;15,600 ,0.70;];
% x2U=[40,1400,0.85;35,1300,0.75;35,1400,0.85;35,1300,0.85;45,1400,0.70;0 ,  0 ,   0;30,1350,0.85;];
% x3L=[15,750 ,0.65;0 ,  0 ,   0;20,600 ,0.70;15,500 ,0.70;0 ,  0 ,   0;15,500 ,0.74;15,500 ,0.70;];
% x3U=[30,1400,0.75;0 ,  0 ,   0;35,1500,0.80;35,1200,0.80;0 ,  0 ,   0;30,1200,0.85;30,1300,0.80;];
% x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;15,650 ,0.65;15,750 ,0.70;20,600 ,0.70;15,600 ,0.70;];
% x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;30,1600,0.85;35,1400,0.85;30,1300,0.80;35,1300,0.85;];
% 
% x5L=[20,850 ,0.60;0 ,  0 ,   0;0 ,  0 ,   0;25,750 ,0.65;25,850 ,0.65;0 ,   0,   0; 0,   0,   0;];
% x5U=[35,1500,0.80;0 ,  0 ,   0;0 ,  0 ,   0;35,1600,0.75;40,1500,0.80;0 ,   0,   0; 0,   0,   0;];
% x6L=[20,850 ,0.65;0 ,  0 ,   0;20,600 ,0.75;15,700 ,0.65;15,650 ,0.65;0 ,  0 ,   0;0 ,  0 ,   0;];
% x6U=[35,1500,0.80;0 ,  0 ,   0;40,1400,0.85;40,1500,0.80;35,1400,0.80;0 ,  0 ,   0;0 ,  0 ,   0;];
% x7L=[15,750 ,0.65;20,700 ,0.65;0 ,  0 ,   0;15,700 ,0.65;20,650 ,0.65;0 ,  0 ,   0;20,700 ,0.60;];
% x7U=[30,1400,0.80;40,1400,0.80;0 ,  0 ,   0;40,1500,0.75;40,1400,0.75;0 ,  0 ,   0;45,1500,0.70;];
% x8L=[15,800 ,0.70;0 ,  0 ,   0;0 ,  0 ,   0;20,800 ,0.65;0 ,  0 ,   0;0 ,  0 ,   0;25,800 ,0.60;];
% x8U=[35,1400,0.80;0 ,  0 ,   0;0 ,  0 ,   0;35,1500,0.80;0 ,  0 ,   0;0 ,  0 ,   0;40,1600,0.75;];
XL=cat(3,x1L,x2L,x3L,x4L,x5L,x6L,x7L,x8L);
XU=cat(3,x1U,x2U,x3U,x4U,x5U,x6U,x7U,x8U);
%disp('输入的评价矩阵如下：')
%disp(XL);%disp(XU);
featureMatrixOfExpert=zeros(7,8);
schemeNoOfEachExpert=zeros(1,8);
ExpertNoOfEachScheme=zeros(1,7);
for k=1:8
    for i=1:7
        if(XL(i,1,k)~=0)
            featureMatrixOfExpert(i,k)=1;
        end
    end
end
for k=1:8
    for i=1:7
           schemeNoOfEachExpert(k)= schemeNoOfEachExpert(k)+featureMatrixOfExpert(i,k);
    end
end
for i=1:7
    for k=1:8
           ExpertNoOfEachScheme(i)=ExpertNoOfEachScheme(i)+featureMatrixOfExpert(i,k);
    end
end
%disp(featureMatrixOfExpert); %disp(ExpertNoOfEachScheme);%disp(schemeNoOfEachExpert);
%% 规范化
z_sum=zeros(1,24);
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
    
    z_sum(16)=z_sum(16)+x6L(j,1)+x6U(j,1);
    z_sum(17)=z_sum(17)+x6L(j,2)+x6U(j,2);
    z_sum(18)=z_sum(18)+x6L(j,3)+x6U(j,3);
    
    z_sum(19)=z_sum(19)+x7L(j,1)+x7U(j,1);
    z_sum(20)=z_sum(20)+x7L(j,2)+x7U(j,2);
    z_sum(21)=z_sum(21)+x7L(j,3)+x7U(j,3);
    
    z_sum(22)=z_sum(22)+x8L(j,1)+x8U(j,1);
    z_sum(23)=z_sum(23)+x8L(j,2)+x8U(j,2);
    z_sum(24)=z_sum(24)+x8L(j,3)+x8U(j,3);
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
for i=13:15
    z_sum(i)=z_sum(i)/(2*schemeNoOfEachExpert(5));
end
for i=16:18
    z_sum(i)=z_sum(i)/(2*schemeNoOfEachExpert(6));
end
for i=19:21
    z_sum(i)=z_sum(i)/(2*schemeNoOfEachExpert(7));
end
for i=22:24
    z_sum(i)=z_sum(i)/(2*schemeNoOfEachExpert(8));
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

c6L=zeros(7,3);
c6U=zeros(7,3);
for i=1:7
    for j=1:2
        if(x6L(i,j)~=0)
            c6L(i,j)=(-x6U(i,j)+z_sum(15+j))/abs(z_sum(15+j));
            c6U(i,j)=(-x6L(i,j)+z_sum(15+j))/abs(z_sum(15+j));
        end
    end
    if(x6L(i,3)~=0)
        c6L(i,3)=(x6L(i,3)-z_sum(3*6))/abs(z_sum(18));
        c6U(i,3)=(x6U(i,3)-z_sum(3*6))/abs(z_sum(18));
    end
end

c7L=zeros(7,3);
c7U=zeros(7,3);
for i=1:7
    for j=1:2
        if(x7L(i,j)~=0)
            c7L(i,j)=(-x7U(i,j)+z_sum(18+j))/abs(z_sum(18+j));
            c7U(i,j)=(-x7L(i,j)+z_sum(18+j))/abs(z_sum(18+j));
        end
    end
    if(x7L(i,3)~=0)
        c7L(i,3)=(x7L(i,3)-z_sum(3*7))/abs(z_sum(21));
        c7U(i,3)=(x7U(i,3)-z_sum(3*7))/abs(z_sum(21));
    end
end

c8L=zeros(7,3);
c8U=zeros(7,3);
for i=1:7
    for j=1:2
        if(x8L(i,j)~=0)
            c8L(i,j)=(-x8U(i,j)+z_sum(21+j))/abs(z_sum(21+j));
            c8U(i,j)=(-x8L(i,j)+z_sum(21+j))/abs(z_sum(21+j));
        end
    end
    if(x8L(i,3)~=0)
        c8L(i,3)=(x8L(i,3)-z_sum(3*8))/abs(z_sum(24));
        c8U(i,3)=(x8U(i,3)-z_sum(3*8))/abs(z_sum(24));
    end
end

r1L=zeros(7,3);r1U=zeros(7,3);
r2L=zeros(7,3);r2U=zeros(7,3);
r3L=zeros(7,3);r3U=zeros(7,3);
r4L=zeros(7,3);r4U=zeros(7,3);
r5L=zeros(7,3);r5U=zeros(7,3);
r6L=zeros(7,3);r6U=zeros(7,3);
r7L=zeros(7,3);r7U=zeros(7,3);
r8L=zeros(7,3);r8U=zeros(7,3);
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
        r6L(i,j)=c6L(i,j)/(max([abs(c6L(1,j)),abs(c6L(2,j)),abs(c6L(3,j)),abs(c6L(4,j)),abs(c6L(5,j)),abs(c6L(6,j)),abs(c6L(7,j)),abs(c6U(1,j)),abs(c6U(2,j)),abs(c6U(3,j)),abs(c6U(4,j)),abs(c6U(5,j)),abs(c6U(6,j)),abs(c6U(7,j))]));
        r6U(i,j)=c6U(i,j)/(max([abs(c6L(1,j)),abs(c6L(2,j)),abs(c6L(3,j)),abs(c6L(4,j)),abs(c6L(5,j)),abs(c6L(6,j)),abs(c6L(7,j)),abs(c6U(1,j)),abs(c6U(2,j)),abs(c6U(3,j)),abs(c6U(4,j)),abs(c6U(5,j)),abs(c6U(6,j)),abs(c6U(7,j))]));
        r7L(i,j)=c7L(i,j)/(max([abs(c7L(1,j)),abs(c7L(2,j)),abs(c7L(3,j)),abs(c7L(4,j)),abs(c7L(5,j)),abs(c7L(6,j)),abs(c7L(7,j)),abs(c7U(1,j)),abs(c7U(2,j)),abs(c7U(3,j)),abs(c7U(4,j)),abs(c7U(5,j)),abs(c7U(6,j)),abs(c7U(7,j))]));
        r7U(i,j)=c7U(i,j)/(max([abs(c7L(1,j)),abs(c7L(2,j)),abs(c7L(3,j)),abs(c7L(4,j)),abs(c7L(5,j)),abs(c7L(6,j)),abs(c7L(7,j)),abs(c7U(1,j)),abs(c7U(2,j)),abs(c7U(3,j)),abs(c7U(4,j)),abs(c7U(5,j)),abs(c7U(6,j)),abs(c7U(7,j))]));
        r8L(i,j)=c8L(i,j)/(max([abs(c8L(1,j)),abs(c8L(2,j)),abs(c8L(3,j)),abs(c8L(4,j)),abs(c8L(5,j)),abs(c8L(6,j)),abs(c8L(7,j)),abs(c8U(1,j)),abs(c8U(2,j)),abs(c8U(3,j)),abs(c8U(4,j)),abs(c8U(5,j)),abs(c8U(6,j)),abs(c8U(7,j))]));
        r8U(i,j)=c8U(i,j)/(max([abs(c8L(1,j)),abs(c8L(2,j)),abs(c8L(3,j)),abs(c8L(4,j)),abs(c8L(5,j)),abs(c8L(6,j)),abs(c8L(7,j)),abs(c8U(1,j)),abs(c8U(2,j)),abs(c8U(3,j)),abs(c8U(4,j)),abs(c8U(5,j)),abs(c8U(6,j)),abs(c8U(7,j))]));
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
RL=cat(3,r1L,r2L,r3L,r4L,r5L,r6L,r7L,r8L);RU=cat(3,r1U,r2U,r3U,r4U,r5U,r6U,r7U,r8U);
%disp('规范化矩阵如下：');
RLJoin=[r1L,r2L,r3L,r4L,r5L,r6L,r7L,r8L];RUJoin=[r1U,r2U,r3U,r4U,r5U,r6U,r7U,r8U];
%disp('RLJoin');%disp(RLJoin);%disp('RUJoin');%disp(RUJoin);
%求规范化后每个方案的平均矩阵
RLAva=zeros(7,3);RUAva=zeros(7,3);
for i=1:7
    for j=1:3       
            RLAva(i,j)=(RL(i,j,1)+RL(i,j,2)+RL(i,j,3)+RL(i,j,4)+RL(i,j,5)+RL(i,j,6)+RL(i,j,7)+RL(i,j,8))/ExpertNoOfEachScheme(i);
            RUAva(i,j)=(RU(i,j,1)+RU(i,j,2)+RU(i,j,3)+RU(i,j,4)+RU(i,j,5)+RU(i,j,6)+RU(i,j,7)+RU(i,j,8))/ExpertNoOfEachScheme(i);
    end
end
%disp('规范化各方案平均水平矩阵如下：');
%disp('RLAva');%disp(RLAva);%disp('RUAva');%disp(RUAva);
%% 参考点
columnMax=zeros(8,3);
columnMin=zeros(8,3);
for k=1:8
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
RfpL=zeros(8,3);RfpU=zeros(8,3);
RfnL=zeros(8,3);RfnU=zeros(8,3);
for k=1:8
    for j=1:3
        RfpL(k,j)=RL(columnMax(k,j),j,k);  RfpU(k,j)=RU(columnMax(k,j),j,k);
        RfnL(k,j)=RL(columnMin(k,j),j,k);  RfnU(k,j)=RU(columnMin(k,j),j,k);
    end
end
% %disp('RfpL');%disp(RfpL);%disp('RfpU');%disp(RfpU);
% %disp('RfnL');%disp(RfnL);%disp('RfnU');%disp(RfnU);



%% 正负前景价值矩阵
similartyP=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
similartyN=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
for k=1:8
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
vp_=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
vn_=cat(3,zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3),zeros(7,3));
for k=1:8
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
v1p=vp_(:,:,1);v2p=vp_(:,:,2);v3p=vp_(:,:,3);v4p=vp_(:,:,4);v5p=vp_(:,:,5);v6p=vp_(:,:,6);v7p=vp_(:,:,7);v8p=vp_(:,:,8);
v1n=vn_(:,:,1);v2n=vn_(:,:,2);v3n=vn_(:,:,3);v4n=vn_(:,:,4);v5n=vn_(:,:,5);v6n=vp_(:,:,6);v7n=vn_(:,:,7);v8n=vn_(:,:,8);
vp=cat(3,v1p,v2p,v3p,v4p,v5p,v6p,v7p,v8p);vn=cat(3,v1n,v2n,v3n,v4n,v5n,v6n,v7n,v8n);
%disp('vp*******************');%disp(vp);%disp('vn*******************');%disp(vn);
%% 属性权重的计算
Aeq1=[1,1,1];
beq1=1;
lb=[0.30;0.30;0.28];
ub=[0.40;0.45;0.45];
x1_0=[0.3,0.3,0.4];
[x1,fval1]=fmincon(@(x1)attributeWeightCommon(v1p,v1n,x1,1,featureMatrixOfExpert,schemeNoOfEachExpert),x1_0,[],[],Aeq1,beq1,lb,ub);
%disp('最优解x1');%disp(x1);
%disp('最优解fval1');%disp(fval1);

Aeq2=[1,1,1];
beq2=1;
lb2=[0.25;0.28;0.28];
ub2=[0.38;0.40;0.38];
x2_0=[0.3,0.3,0.4];
[x2,fval2]=fmincon(@(x2)attributeWeightCommon(v2p,v2n,x2,2,featureMatrixOfExpert,schemeNoOfEachExpert),x2_0,[],[],Aeq2,beq2,lb2,ub2);
%disp('最优解x2');%disp(x2);
%disp('最优解fval2');%disp(fval2);

Aeq3=[1,1,1];
beq3=1;
lb3=[0.30;0.25;0.25];
ub3=[0.42;0.45;0.35];
x3_0=[0.3,0.3,0.4];
[x3,fval3]=fmincon(@(x3)attributeWeightCommon(v3p,v3n,x3,3,featureMatrixOfExpert,schemeNoOfEachExpert),x3_0,[],[],Aeq3,beq3,lb3,ub3);
%disp('最优解x3');%disp(x3);
%disp('最优解fval3');%disp(fval3);

Aeq4=[1,1,1];
beq4=1;
lb4=[0.25;0.30;0.30];
ub4=[0.37;0.45;0.42];
x4_0=[0.3,0.3,0.4];
[x4,fval4]=fmincon(@(x4)attributeWeightCommon(v4p,v4n,x4,4,featureMatrixOfExpert,schemeNoOfEachExpert),x4_0,[],[],Aeq4,beq4,lb4,ub4);
%disp('最优解x4');%disp(x4);
%disp('最优解fval4');%disp(fval4);


Aeq5=[1,1,1];
beq5=1;
lb5=[0.25;0.27;0.30];
ub5=[0.40;0.45;0.40];
x5_0=[0.3,0.3,0.4];
[x5,fval5]=fmincon(@(x5)attributeWeightCommon(v5p,v5n,x5,5,featureMatrixOfExpert,schemeNoOfEachExpert),x5_0,[],[],Aeq5,beq5,lb5,ub5);
%disp('最优解x5');%disp(x5);
%disp('最优解fval5');%disp(fval5);

Aeq6=[1,1,1];
beq6=1;
lb6=[0.25;0.27;0.30];
ub6=[0.40;0.45;0.40];
x6_0=[0.3,0.3,0.4];
[x6,fval6]=fmincon(@(x6)attributeWeightCommon(v6p,v6n,x6,6,featureMatrixOfExpert,schemeNoOfEachExpert),x6_0,[],[],Aeq6,beq6,lb6,ub6);
%disp('最优解x6');%disp(x6);
%disp('最优解fval6');%disp(fval6);

Aeq7=[1,1,1];
beq7=1;
lb7=[0.25;0.27;0.30];
ub7=[0.40;0.45;0.40];
x7_0=[0.3,0.3,0.4];
[x7,fval7]=fmincon(@(x7)attributeWeightCommon(v7p,v7n,x7,7,featureMatrixOfExpert,schemeNoOfEachExpert),x7_0,[],[],Aeq7,beq7,lb7,ub7);
%disp('最优解x7');%disp(x7);
%disp('最优解fval7');%disp(fval7);

Aeq8=[1,1,1];
beq8=1;
lb8=[0.25;0.27;0.30];
ub8=[0.40;0.45;0.40];
x8_0=[0.3,0.3,0.4];
[x8,fval8]=fmincon(@(x8)attributeWeightCommon(v8p,v8n,x8,8,featureMatrixOfExpert,schemeNoOfEachExpert),x8_0,[],[],Aeq8,beq8,lb8,ub8);
%disp('最优解x8');%disp(x8);
%disp('最优解fval8');%disp(fval8);


% f是各专家确定的属性权重矩阵
f=[x1;x2;x3;x4;x5;x6;x7;x8];
%disp('属性权重f');%disp(f);
% fp是各专家属性权重的正负决策权重
fp=zeros(8,3);fn=zeros(8,3);
for i=1:8
    for j=1:3
        fp(i,j)=pi_p(f(i,j));
        fn(i,j)=pi_n(f(i,j));
    end
end
%disp('fp');%disp(fp);
%disp('fn');%disp(fn);
%% 修正后的专家权重计算方法
U=zeros(7,8);
for k=1:8
    for i=1:7
        for j=1:3
            if(XL(i,j,k)~=0)
                U(i,k)=U(i,k)+vp(i,j,k)*fp(k,j)+vn(i,j,k)*fn(k,j);
            end
        end
    end
end
%disp('U');%disp(U);

Aeq=[1,1,1,1,1,1,1,1];
beq=1;
lb=[0.08;0.08;0.08;0.08;0.08;0.08;0.08;0.08];
ub=[0.16;0.16;0.16;0.16;0.16;0.16;0.16;0.16];
x0=[0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125]; 
[rou,fval]=fmincon(@(rou)eightExpertWeightCommon( U,rou,featureMatrixOfExpert ),x0,[],[],Aeq,beq,lb,ub);
%disp('专家权重rou');%disp(rou);
% %disp('最小化总偏差fval');%disp(fval);
vfinal=zeros(1,7);
for i=1:7
    for j=1:8
        if(U(i,j)~=0)
            vfinal(i)=vfinal(i)+U(i,j)*rou(j);
        end
    end
end
% vfinal是群体一致偏好
for i=1:7
    vfinal(i)=vfinal(i)/(rou(1)*featureMatrixOfExpert(i,1)+rou(2)*featureMatrixOfExpert(i,2)+rou(3)*featureMatrixOfExpert(i,3)+rou(4)*featureMatrixOfExpert(i,4)+rou(5)*featureMatrixOfExpert(i,5)+rou(6)*featureMatrixOfExpert(i,6)+rou(7)*featureMatrixOfExpert(i,7)+rou(8)*featureMatrixOfExpert(i,8));
end

Ud=zeros(7,8);
for i=1:7
    for j=1:8
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
    for k=1:8
        for j=1:3
            sum(i)=sum(i)+(vp(i,j,k)*fp(k,j)+vn(i,j,k)*fn(k,j))*rou(k);
        end
    end
end
%规范化
g=zeros(1,7);
for i=1:7
    g(i)=rou(1)*featureMatrixOfExpert(i,1)+rou(2)*featureMatrixOfExpert(i,2)+rou(3)*featureMatrixOfExpert(i,3)+rou(4)*featureMatrixOfExpert(i,4)+rou(5)*featureMatrixOfExpert(i,5)+rou(6)*featureMatrixOfExpert(i,6)+rou(7)*featureMatrixOfExpert(i,7)+rou(8)*featureMatrixOfExpert(i,8);
end
for i=1:7
    sum(i)=sum(i)/g(i);
end

% 个人决策顺序对比
v_s=zeros(8,7);
for k=1:8
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
%disp('方案最终前景值sum');%disp(sum);
disp('最终排序顺序paixu');disp(paixuf);
sum_paixu=zeros(1,7);
for i=1:7
    sum_paixu(i)=sum(paixu(i));
end
disp('最终前景价值排序');disp(sum_paixu);
end

