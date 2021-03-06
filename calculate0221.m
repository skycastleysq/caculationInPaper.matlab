clearvars;
clc;
format short;
lamda=2.25;
%标准化前景理论 冒险型
afa=0.88;
bta=0.92;

a_p=0.61;
a_n=0.69;


% %保守型
% afa=1.21;
% bta=1.21;
% a_p=0.55;
% a_n=0.49;



% %中立型
% afa=1.00;
% bta=1.00;
% a_p=0.58;
% a_n=0.58;

% 原始评价数据
x1L=[10,500, 0.40;15,400, 0.45;20,600, 0.30;0,0,0;10,800, 0.35;0,0,0;0,0,0;];
x1U=[45,1400,0.85;30,1700,0.80;35,1800,0.75;0,0,0;40,1400,0.70;0,0,0;0,0,0;];
x2L=[15,600, 0.45;20,700, 0.35;25,500, 0.30;20,300, 0.40;15,400, 0.35;0,0,0;20,600, 0.40;];
x2U=[35,1800,0.80;30,1600,0.85;35,1500,0.75;45,1600,0.80;40,1400,0.70;0,0,0;45,1800,0.85;];
x3L=[10,700, 0.35;0,0,0;15,600, 0.35;20,500, 0.40;0,0,0;20,300, 0.45;25,400, 0.50];
x3U=[35,1500,0.75;0,0,0;38,1300,0.80;30,1800,0.70;0,0,0;40,1400,0.90;35,1600,0.85];
x4L=[0,0,0;0,0,0;0,0,0;25,500, 0.40;15,400, 0.45;12,350, 0.35;20,600, 0.35];
x4U=[0,0,0;0,0,0;0,0,0;45,1400,0.75;30,1700,0.70;35,1600,0.80;40,1500,0.78];

%% 规范化
z_sum=zeros(1,12);
disp('z_sum1');disp(z_sum);

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
disp('z_sum2');disp(z_sum);disp('z_sumend')
for i=1:3
    z_sum(i)=z_sum(i)/8;
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

disp('z_sum3');disp(z_sum);disp('z_sumend')

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
disp('c1L');disp(c1L);disp('c1U');disp(c1U);
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
disp('r1L');disp(r1L);disp('r1Lend');disp('r1U');disp(r1U);disp('r1Uend')
disp('r2L');disp(r2L);disp('r2Lend');disp('r2U');disp(r2U);disp('r2Uend')
disp('r3L');disp(r3L);disp('r3Lend');disp('r3U');disp(r3U);disp('r3Uend')
disp('r4L');disp(r4L);disp('r4Lend');disp('r4U');disp(r4U);disp('r4Uend')

%% 正负理想参考点
r1_rfpL=zeros(1,3);
r1_rfnL=zeros(1,3);
r2_rfpL=zeros(1,3);
r2_rfnL=zeros(1,3);
r3_rfpL=zeros(1,3);
r3_rfnL=zeros(1,3);
r4_rfpL=zeros(1,3);
r4_rfnL=zeros(1,3);

for i=1:3
    r1_rfpL(i)=max([r1L(1,i),r1L(2,i),r1L(3,i),r1L(5,i)]);
    r1_rfnL(i)=min([r1L(1,i),r1L(2,i),r1L(3,i),r1L(5,i)]);
    r2_rfpL(i)=max([r2L(1,i),r2L(2,i),r2L(3,i),r2L(4,i),r2L(5,i),r2L(7,i)]);
    r2_rfnL(i)=min([r2L(1,i),r2L(2,i),r2L(3,i),r2L(4,i),r2L(5,i),r2L(7,i)]);
    r3_rfpL(i)=max([r3L(1,i),r3L(3,i),r3L(4,i),r3L(6,i),r3L(7,i)]);
    r3_rfnL(i)=min([r3L(1,i),r3L(3,i),r3L(4,i),r3L(6,i),r3L(7,i)]);
    r4_rfpL(i)=max([r4L(4,i),r4L(5,i),r4L(6,i),r4L(7,i)]);
    r4_rfnL(i)=min([r4L(4,i),r4L(5,i),r4L(6,i),r4L(7,i)]);
end

r1_rfpU=zeros(1,3);
r1_rfnU=zeros(1,3);
r2_rfpU=zeros(1,3);
r2_rfnU=zeros(1,3);
r3_rfpU=zeros(1,3);
r3_rfnU=zeros(1,3);
r4_rfpU=zeros(1,3);
r4_rfnU=zeros(1,3);

for i=1:3
    r1_rfpU(i)=max([r1U(1,i),r1U(2,i),r1U(3,i),r1U(5,i)]);
    r1_rfnU(i)=min([r1U(1,i),r1U(2,i),r1U(3,i),r1U(5,i)]);
    r2_rfpU(i)=max([r2U(1,i),r2U(2,i),r2U(3,i),r2U(4,i),r2U(5,i),r2U(7,i)]);
    r2_rfnU(i)=min([r2U(1,i),r2U(2,i),r2U(3,i),r2U(4,i),r2U(5,i),r2U(7,i)]);
    r3_rfpU(i)=max([r3U(1,i),r3U(3,i),r3U(4,i),r3U(6,i),r3U(7,i)]);
    r3_rfnU(i)=min([r3U(1,i),r3U(3,i),r3U(4,i),r3U(6,i),r3U(7,i)]);
    r4_rfpU(i)=max([r4U(5,i),r4U(6,i),r4U(7,i)]);
    r4_rfnU(i)=min([r4U(5,i),r4U(6,i),r4U(7,i)]);
end
disp('r1_rfpL');disp(r1_rfpL);disp('r1_rfpU');disp(r1_rfpU);
disp('r2_rfpL');disp(r2_rfpL);disp('r2_rfpU');disp(r2_rfpU);
disp('r3_rfpL');disp(r3_rfpL);disp('r3_rfpU');disp(r3_rfpU);
disp('r4_rfpL');disp(r4_rfpL);disp('r4_rfpU');disp(r4_rfpU);

disp('r1_rfnL');disp(r1_rfnL);disp('r1_rfnU');disp(r1_rfnU);
disp('r2_rfnL');disp(r2_rfnL);disp('r2_rfnU');disp(r2_rfnU);
disp('r3_rfnL');disp(r3_rfnL);disp('r3_rfnU');disp(r3_rfnU);
disp('r4_rfnL');disp(r4_rfnL);disp('r4_rfnU');disp(r4_rfnU);
%% 正负前景价值矩阵
v1p=zeros(7,3);v1n=zeros(7,3);
v2p=zeros(7,3);v2n=zeros(7,3);
v3p=zeros(7,3);v3n=zeros(7,3);
v4p=zeros(7,3);v4n=zeros(7,3);

for i=1:7
    for j=1:3
        if(r1L(i,j)~=0)
            v1p(i,j)=(getdis(r1L(i,j),r1U(i,j),r1_rfnL(j),r1_rfnU(j)))^afa;
            v1n(i,j)=-lamda*(getdis(r1L(i,j),r1U(i,j),r1_rfpL(j),r1_rfpU(j)))^bta;
        end
        if(r2L(i,j)~=0)
            v2p(i,j)=(getdis(r2L(i,j),r2U(i,j),r2_rfnL(j),r2_rfnU(j)))^afa;
            v2n(i,j)=-lamda*(getdis(r2L(i,j),r2U(i,j),r2_rfpL(j),r2_rfpU(j)))^bta;
        end
        if(r3L(i,j)~=0)
            v3p(i,j)=(getdis(r3L(i,j),r3U(i,j),r3_rfnL(j),r3_rfnU(j)))^afa;
            v3n(i,j)=-lamda*(getdis(r3L(i,j),r3U(i,j),r3_rfpL(j),r3_rfpU(j)))^bta;
        end
        if(r4L(i,j)~=0)
            v4p(i,j)=(getdis(r4L(i,j),r4U(i,j),r4_rfnL(j),r4_rfnU(j)))^afa;
            v4n(i,j)=-lamda*(getdis(r4L(i,j),r4U(i,j),r4_rfpL(j),r4_rfpU(j)))^bta;
        end
    end
end
disp('v1p');disp(v1p);disp('v1n');disp(v1n);disp('v2p');disp(v2p);disp('v2n');disp(v2n);
disp('v3p');disp(v3p);disp('v3n');disp(v3n);disp('v4p');disp(v4p);disp('v4n');disp(v4n);
vp=cat(3,v1p,v2p,v3p,v4p);vn=cat(3,v1n,v2n,v3n,v4n);
disp('vp');disp(vp);disp('vn');disp(vn);
%% 属性权重的计算
v1p_tmp=zeros(1,3);v1n_tmp=zeros(1,3);
v2p_tmp=zeros(1,3);v2n_tmp=zeros(1,3);
v3p_tmp=zeros(1,3);v3n_tmp=zeros(1,3);
v4p_tmp=zeros(1,3);v4n_tmp=zeros(1,3);
for j=1:3
    for i=1:7
        v1p_tmp(j)=v1p_tmp(j)+v1p(i,j);
        v2p_tmp(j)=v2p_tmp(j)+v2p(i,j);
        v3p_tmp(j)=v3p_tmp(j)+v3p(i,j);
        v4p_tmp(j)=v4p_tmp(j)+v4p(i,j);
        v1n_tmp(j)=v1n_tmp(j)+v1n(i,j);
        v2n_tmp(j)=v2n_tmp(j)+v2n(i,j);
        v3n_tmp(j)=v3n_tmp(j)+v3n(i,j);
        v4n_tmp(j)=v4n_tmp(j)+v4n(i,j);
    end
end
disp('v1p_tmp');disp(v1p_tmp);disp('v1n_tmp');disp(v1n_tmp);
disp('v2p_tmp');disp(v2p_tmp);disp('v2n_tmp');disp(v2n_tmp);
disp('v3p_tmp');disp(v3p_tmp);disp('v3n_tmp');disp(v3n_tmp);
disp('v4p_tmp');disp(v4p_tmp);disp('v4n_tmp');disp(v4n_tmp);



Aeq1=[1,1,1];
beq1=1;
lb=[0.30;0.30;0.25];
ub=[0.45;0.45;0.48];
% lb=[0.30;0.25;0.30];
% ub=[0.45;0.45;0.48];
% lb=[0.20;0.25;0.20];
% ub=[0.45;0.40;0.40];
x1_0=[0.3,0.3,0.4];
[x1,fval1]=fmincon(@(x1)attributeWeight_expert(v1p,v1n,x1,1),x1_0,[],[],Aeq1,beq1,lb,ub);
%[x1,fval1]=fmincon(@(x1)attributeWeight_expert1(v1p_tmp,v1n,x1),x1_0,[],[],Aeq1,beq1,lb,ub);
disp('最优解x1');disp(x1);
disp('最优解fval1');disp(fval1);

Aeq2=[1,1,1];
beq2=1;
lb2=[0.25;0.28;0.28];
ub2=[0.38;0.40;0.38];
%lb2=[0.28;0.30;0.20];
%ub2=[0.40;0.42;0.38];
x2_0=[0.3,0.3,0.4];
%[x2,fval2]=fmincon(@(x2)attributeWeight(v2p_tmp,v2n_tmp,x2),x2_0,[],[],Aeq2,beq2,lb2,ub2);
[x2,fval2]=fmincon(@(x2)attributeWeight_expert(v2p,v2n,x2,2),x2_0,[],[],Aeq2,beq2,lb2,ub2);

disp('最优解x2');disp(x2);
disp('最优解fval2');disp(fval2);

Aeq3=[1,1,1];
beq3=1;
lb3=[0.30;0.25;0.25];
ub3=[0.42;0.45;0.35];
% lb3=[0.30;0.25;0.30];
% ub3=[0.42;0.45;0.43];
x3_0=[0.3,0.3,0.4];
%[x3,fval3]=fmincon(@(x3)attributeWeight(v3p_tmp,v3n_tmp,x3),x3_0,[],[],Aeq3,beq3,lb3,ub3);
[x3,fval3]=fmincon(@(x3)attributeWeight_expert(v3p,v3n,x3,3),x3_0,[],[],Aeq3,beq3,lb3,ub3);
disp('最优解x3');disp(x3);
disp('最优解fval3');disp(fval3);

Aeq4=[1,1,1];
beq4=1;
lb4=[0.25;0.28;0.30];
ub4=[0.40;0.45;0.42];
% lb4=[0.28;0.22;0.30];
% ub4=[0.45;0.45;0.45];
x4_0=[0.3,0.3,0.4];
%[x4,fval4]=fmincon(@(x4)attributeWeight(v4p_tmp,v4n_tmp,x4),x4_0,[],[],Aeq4,beq4,lb4,ub4);
[x4,fval4]=fmincon(@(x4)attributeWeight_expert(v4p,v4n,x4,4),x4_0,[],[],Aeq4,beq4,lb4,ub4);
disp('最优解x4');disp(x4);
disp('最优解fval4');disp(fval4);


% f是各专家确定的属性权重矩阵
f=[x1;x2;x3;x4];
disp('f');disp(f);
% fp是各专家属性权重的正负决策权重
fp=zeros(4,3);fn=zeros(4,3);
for i=1:4
    for j=1:3
        fp(i,j)=pi_p(f(i,j));
        fn(i,j)=pi_n(f(i,j));
    end
end
disp('fp');disp(fp);
disp('fn');disp(fn);
% A=[0,0,0,0,0,0,0,1,0,0;
%    0,0,0,0,0,0,0,0,1,0;
%    0,0,0,0,0,0,0,0,0,1;];
% b=[0;0;0];
% Aeq=[1,1,1,1,0,0,0,0,0,0];
% beq=1;
% lb=[0.15;0.10;0.20;0.20;0;0;0;];
% ub=[0.30;0.35;0.40;0.35;];
% x0=[0.25,0.25,0.25,0.25,0,0,0,0,0,0];
% [x,fval]=fmincon(@(x)expertweight(v1p,v1n,v2p,v2n,v3p,v3n,v4p,v4n,x1,x2,x
% 3,x4,x),x0,A,b,Aeq,beq,lb,ub);

%% 专家权重的计算 x(7),x(8),x(9),x(10)
% A=[1,0,0,0,0,0,0,0,0,0;
%     0,1,0,0,0,0,0,0,0,0;
%     0,0,1,0,0,0,0,0,0,0;
%     0,0,0,-1,0,0,0,0,0,0;
%     0,0,0,0,-1,0,0,0,0,0;
%     0,0,0,0,0,-1,0,0,0,0;
%     0,0,0,0,0,0,1,0,0,0;
%     0,0,0,0,0,0,0,1,0,0;
%     0,0,0,0,0,0,0,0,1,0;
%     0,0,0,0,0,0,0,0,0,1;
%     0,0,0,0,0,0,-1,0,0,0;
%     0,0,0,0,0,0,0,-1,0,0;
%     0,0,0,0,0,0,0,0,-1,0;
%     0,0,0,0,0,0,0,0,0,-1;];
% b=[0;0;0;0;0;0;0.30;0.30;0.35;0.30;-0.20;-0.15;-0.20;-0.15;];
% Aeq=[0,0,0,0,0,0,1,1,1,1];
% beq=1;
% x0=[0,0,0,0,0,0,0.25,0.25,0.25,0.25];
% [x,fval]=fmincon(@(x)expertweight2(r1L,r1U,r2L,r2U,r3L,r3U,r4L,r4U,x),x0,A,b,Aeq,beq,[],[]);
% disp('x');disp(x);
% disp('fval');disp(fval);
% rou=[x(7),x(8),x(9),x(10)];%专家权重
%% 修正后的专家权重计算方法
U=zeros(7,4);

for k=1:4
    for i=1:7
        for j=1:3
            if(vp(i,j,k)~=0)
                U(i,k)=U(i,k)+vp(i,j,k)*fp(k,j)+vn(i,j,k)*fn(k,j);
            end
        end
    end
end
disp('U');disp(U);
Aeq=[1,1,1,1];
beq=1;
x0=[0.25,0.25,0.25,0.25];
lb=[0.20;0.15;0.20;0.15];
ub=[0.32;0.32;0.35;0.35];
[rou,fval]=fmincon(@(rou,vfinal)expertWeight3(U,rou),x0,[],[],Aeq,beq,lb,ub);
disp('专家权重rou');disp(rou);
disp('最小化总偏差fval');disp(fval);

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
sum(1)=sum(1)/(rou(1)+rou(2)+rou(3));
sum(2)=sum(2)/(rou(1)+rou(2));
sum(3)=sum(3)/(rou(1)+rou(2)+rou(3));
sum(4)=sum(4)/(rou(2)+rou(3)+rou(4));
sum(5)=sum(5)/(rou(1)+rou(2)+rou(4));
sum(6)=sum(6)/(rou(3)+rou(4));
sum(7)=sum(7)/(rou(2)+rou(3)+rou(4));
disp('sum');disp(sum);

%% 个人决策顺序对比

v_s=zeros(4,7);
for k=1:4
    for i=1:7
        for j=1:3            
            v_s(k,i)=v_s(k,i)+vp(i,j,k)*fp(k,j)+vn(i,j,k)*fn(k,j);
            
        end
    end
end
disp('个人决策顺序v_s');disp(v_s);






