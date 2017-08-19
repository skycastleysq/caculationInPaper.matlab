clearvars;
clc;
format long;
% x1L=[15,400, 0.40;20,400, 0.42;15,600, 0.30;0,0,0;10,800, 0.35;0,0,0;0,0,0;];
% x1U=[45,1500,0.85;35,1600,0.80;40,1500,0.75;0,0,0;40,1400,0.70;0,0,0;0,0,0;];
% x2L=[18,600, 0.45;20,650, 0.35;25,450, 0.30;20,300, 0.40;15,400, 0.35;0,0,0;25,600, 0.35;];
% x2U=[35,1800,0.80;40,1700,0.85;35,1500,0.80;45,1600,0.78;40,1400,0.75;0,0,0;40,1800,0.85;];
% x3L=[15,600, 0.35;0,0,0;15,600 ,0.35;20,500, 0.40;0,0,0;20,450, 0.45;18,400, 0.40];
% x3U=[35,1500,0.75;0,0,0;40,1300,0.80;30,1800,0.73;0,0,0;38,1600,0.80;35,1700,0.85];
% x4L=[0,0,0;0,0,0;0,0,0;25,500, 0.40;15,400, 0.45;12,500, 0.35;20,600, 0.35];
% x4U=[0,0,0;0,0,0;0,0,0;45,1400,0.75;30,1700,0.70;35,1600,0.80;40,1500,0.78];
% x5L=[21,450, 0.35;0,0,0;0,0,0;20,500, 0.30;25,600, 0.40;0,0,0;0,0,0;];
% x5U=[35,1700,0.75;0,0,0;0,0,0;45,1500,0.75;40,1600,0.70;0,0,0;0,0,0;];

% 56 65 差距0.10 0.10以上  0.046 0.042差距过小
% x1L=[15,700 ,0.70;25,750 ,0.55;20,800 ,0.70;0 ,  0 ,   0;25,900 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
% x1U=[30,1200,0.85;40,1300,0.70;35,1400,0.80;0 ,  0 ,   0;55,1600,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
% x2L=[15,850 ,0.70;20,800 ,0.65;20,700 ,0.65;20,600 ,0.65;30,900 ,0.60;0 ,  0 ,   0;25,800 ,0.55;];
% x2U=[30,1400,0.80;40,1600,0.85;35,1400,0.75;40,1200,0.80;55,1700,0.70;0 ,  0 ,   0;50,1600,0.65;];
% x3L=[15,800 ,0.65;0 ,  0 ,   0;20,750 ,0.65;20,700 ,0.70;0 ,  0 ,   0;15,900 ,0.60;25,950 ,0.55;];
% x3U=[30,1500,0.80;0 ,  0 ,   0;35,1500,0.80;35,1400,0.85;0 ,  0 ,   0;35,1600,0.70;50,1700,0.65;];
% x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;20,650 ,0.55;15,550 ,0.70;25,850 ,0.50;25,950 ,0.55;];
% x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,
% 0;45,1300,0.70;35,1200,0.85;50,1600,0.65;45,1800,0.70;];
% 56 65 差距0.10 0.10以上  0.046 0.042差距过小
%专家1增加对方案4的评价数据
% 56 65 有无前景完美
% x1L=[20,800 ,0.60;25,800 ,0.60;20,800 ,0.70;0 ,  0 ,   0;25,850 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
% x1U=[35,1500,0.80;35,1600,0.75;40,1400,0.85;0 ,  0 ,   0;40,1600,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
% x2L=[25,700 ,0.70;15,600 ,0.60;20,700 ,0.70;20,600 ,0.70;25,500 ,0.70;0 ,  0 ,   0;20,750 ,0.65;];
% x2U=[40,1400,0.80;35,1500,0.70;35,1400,0.85;40,1300,0.80;45,1300,0.80;0 ,  0 ,   0;35,1500,0.75;];
% x3L=[15,800 ,0.65;0 ,  0 ,   0;20,750 ,0.70;20,700 ,0.70;0 ,  0 ,   0;25,650 ,0.70;20,750 ,0.60;];
% x3U=[30,1600,0.75;0 ,  0 ,   0;35,1600,0.80;35,1400,0.85;0 ,  0 ,   0;40,1600,0.80;40,1400,0.70;];
% x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;20,650 ,0.60;15,700 ,0.70;25,700 ,0.60;15,600 ,0.65;];
% x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;45,1300,0.80;35,1600,0.85;40,1500,0.70;40,1400,0.80;];


% x1L=[20,800 ,0.60;25,700 ,0.60;20,800 ,0.70;0 ,  0 ,   0;25,850 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
% x1U=[35,1500,0.80;40,1600,0.75;40,1400,0.85;0 ,  0 ,   0;45,1600,0.70;0 ,  0 ,   0;0 ,0   ,   0;];
% x2L=[25,700 ,0.70;20,500 ,0.60;20,700 ,0.70;20,600 ,0.70;20,900 ,0.60;0 ,  0 ,   0;15,650 ,0.70;];
% x2U=[45,1400,0.80;35,1400,0.70;35,1400,0.85;35,1300,0.85;45,1800,0.70;0 ,  0 ,   0;30,1350,0.85;];
% x3L=[15,800 ,0.65;0 ,  0 ,   0;20,700 ,0.70;20,500 ,0.70;0 ,  0 ,   0;25,500 ,0.80;15,500 ,0.65;];
% x3U=[30,1600,0.75;0 ,  0 ,   0;35,1400,0.80;40,1200,0.85;0 ,  0 ,   0;35,1400,0.85;30,1300,0.80;];
% x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;20,650 ,0.65;15,700 ,0.55;20,600 ,0.75;15,500 ,0.70;];
% x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;35,1300,0.85;35,1600,0.70;30,1500,0.85;35,1300,0.85;];

% x1L=[15,700 ,0.70;25,750 ,0.55;20,800 ,0.60;0 ,  0 ,   0;20,800 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
% x1U=[35,1200,0.85;40,1300,0.70;35,1400,0.80;0 ,  0 ,   0;50,1600,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
% x2L=[15,850 ,0.70;20,800 ,0.65;20,700 ,0.65;20,800 ,0.65;25,600 ,0.60;0 ,  0 ,   0;25,800 ,0.55;];
% x2U=[30,1400,0.80;40,1600,0.85;35,1400,0.75;40,1500,0.80;40,1500,0.70;0 ,  0 ,   0;50,1600,0.65;];
% x3L=[15,800 ,0.65;0 ,  0 ,   0;20,750 ,0.65;20,700 ,0.70;0 ,  0 ,   0;15,900 ,0.60;25,950 ,0.55;];
% x3U=[30,1500,0.80;0 ,  0 ,   0;35,1500,0.80;35,1400,0.85;0 ,  0 ,   0;35,1600,0.70;50,1700,0.65;];
% x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;20,650 ,0.55;15,550 ,0.70;25,700 ,0.50;25,950 ,0.55;];
% x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;45,1500,0.70;35,1200,0.85;50,1500,0.65;45,1800,0.70;];
%有无完美
% x1L=[20,800 ,0.60;25,700 ,0.65;20,800 ,0.70;0 ,  0 ,   0;25,800 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
% x1U=[35,1500,0.85;40,1600,0.75;40,1400,0.85;0 ,  0 ,   0;45,1500,0.70;0 ,  0 ,   0;0 ,0   ,   0;];
% x2L=[25,700 ,0.70;20,500 ,0.60;20,700 ,0.70;20,500 ,0.70;20,900 ,0.60;0 ,  0 ,   0;15,650 ,0.70;];
% x2U=[45,1400,0.80;35,1400,0.70;35,1400,0.85;35,1300,0.85;45,1800,0.70;0 ,  0 ,   0;30,1350,0.85;];
% x3L=[15,800 ,0.65;0 ,  0 ,   0;20,700 ,0.70;20,500 ,0.70;0 ,  0 ,   0;25,500 ,0.80;15,600 ,0.65;];
% x3U=[30,1600,0.75;0 ,  0 ,   0;35,1400,0.80;40,1200,0.85;0 ,  0 ,   0;35,1400,0.85;30,1350,0.80;];
% x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;20,600 ,0.65;15,700 ,0.55;20,700 ,0.70;15,600 ,0.70;];
% x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;35,1300,0.85;35,1600,0.70;30,1600,0.80;35,1300,0.85;];

%  稳定性分析还可以，但是差异过小，不合适
% x1L=[20,700 ,0.60;25,700 ,0.65;20,700 ,0.70;0 ,  0 ,   0;25,800 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
% x1U=[35,1500,0.80;40,1500,0.75;40,1500,0.85;0 ,  0 ,   0;45,1600,0.70;0 ,  0 ,   0;0 ,0   ,   0;];
% x2L=[25,700 ,0.70;20,500 ,0.60;20,700 ,0.70;20,500 ,0.70;20,900 ,0.60;0 ,  0 ,   0;15,650 ,0.70;];
% x2U=[45,1400,0.80;35,1400,0.70;35,1500,0.85;35,1300,0.85;45,1800,0.70;0 ,  0 ,   0;30,1350,0.85;];
% x3L=[15,800 ,0.65;0 ,  0 ,   0;20,700 ,0.70;20,500 ,0.70;0 ,  0 ,   0;20,500 ,0.80;15,600 ,0.65;];
% x3U=[30,1600,0.75;0 ,  0 ,   0;35,1400,0.80;35,1200,0.85;0 ,  0 ,   0;40,1400,0.85;30,1350,0.80;];
% x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;20,600 ,0.65;25,700 ,0.55;20,600 ,0.70;20,600 ,0.70;];
% x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;35,1300,0.85;40,1700,0.70;30,1500,0.80;35,1300,0.85;];
%有无完美 差异也好 稳定性分析中属性12共有3处需要修改
x1L=[20,600 ,0.60;25,800 ,0.65;20,800 ,0.70;0 ,  0 ,   0;25,700 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
x1U=[35,1300,0.80;35,1500,0.80;40,1400,0.85;0 ,  0 ,   0;40,1500,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
x2L=[25,700 ,0.70;15,600 ,0.60;20,750 ,0.70;20,600 ,0.70;25,600 ,0.60;0 ,  0 ,   0;15,600 ,0.70;];
x2U=[40,1400,0.85;35,1300,0.75;35,1400,0.85;35,1300,0.85;45,1400,0.70;0 ,  0 ,   0;30,1350,0.85;];
x3L=[15,750 ,0.65;0 ,  0 ,   0;20,600 ,0.70;15,500 ,0.70;0 ,  0 ,   0;15,500 ,0.74;15,500 ,0.70;];
x3U=[30,1400,0.75;0 ,  0 ,   0;35,1500,0.80;35,1200,0.80;0 ,  0 ,   0;30,1200,0.85;30,1300,0.80;];
x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;15,650 ,0.65;15,750 ,0.70;20,600 ,0.70;15,600 ,0.70;];
x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;30,1600,0.85;35,1400,0.85;30,1300,0.80;35,1300,0.85;];


[sum,paixu]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
maxFinal=max([abs(sum(1)),abs(sum(2)),abs(sum(3)),abs(sum(4)),abs(sum(5)),abs(sum(6)),abs(sum(7))]);
X=cat(3,x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

sita=-0.05;
%% 属性1
Max1=45;deta1=Max1*sita;
%% 方案1
%专家1
disp('****************方案1 专家1***************************************************************************');
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(1,1)=x1L(1,1)+deta1;x1U(1,1)=x1U(1,1)+deta1;
[sum111,paixu111]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(1,1)=x2L(1,1)+deta1;x2U(1,1)=x2U(1,1)+deta1;
[sum112,paixu112]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(1,1)=x3L(1,1)+deta1;x3U(1,1)=x3U(1,1)+deta1;
[sum113,paixu113]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案2
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(2,1)=x1L(2,1)+deta1;x1U(2,1)=x1U(2,1)+deta1;
[sum211,paixu211]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(2,1)=x2L(2,1)+deta1;x2U(2,1)=x2U(2,1)+deta1;
[sum212,paixu212]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案3  
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(3,1)=x1L(3,1)+deta1;x1U(3,1)=x1U(3,1)+deta1;
[sum311,paixu311]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(3,1)=x2L(3,1)+deta1;x2U(3,1)=x2U(3,1)+deta1;
[sum312,paixu312]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(3,1)=x3L(3,1)+deta1;x3U(3,1)=x3U(3,1)+deta1;
[sum313,paixu313]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案4 
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(4,1)=x2L(4,1)+deta1;x2U(4,1)=x2U(4,1)+deta1;
[sum412,paixu412]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(4,1)=x3L(4,1)+deta1;x3U(4,1)=x3U(4,1)+deta1;
[sum413,paixu413]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(4,1)=x4L(4,1)+deta1;x4U(4,1)=x4U(4,1)+deta1;
[sum414,paixu414]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案5 
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(5,1)=x1L(5,1)+deta1;x1U(5,1)=x1U(5,1)+deta1;
[sum511,paixu511]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(5,1)=x2L(5,1)+deta1;x2U(5,1)=x2U(5,1)+deta1;
[sum512,paixu512]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(5,1)=x4L(5,1)+deta1;x4U(5,1)=x4U(5,1)+deta1;
[sum514,paixu514]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案6 
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(6,1)=x3L(6,1)+deta1;x3U(6,1)=x3U(6,1)+deta1;
[sum613,paixu613]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(6,1)=x4L(6,1)+deta1;x4U(6,1)=x4U(6,1)+deta1;
[sum614,paixu614]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案7 
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(7,1)=x2L(7,1)+deta1;x2U(7,1)=x2U(7,1)+deta1;
[sum712,paixu712]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(7,1)=x3L(7,1)+deta1;x3U(7,1)=x3U(7,1)+deta1;
[sum713,paixu713]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(7,1)=x4L(7,1)+deta1;x4U(7,1)=x4U(7,1)+deta1;
[sum714,paixu714]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
flag=1;
if(flag==1)
    %方案7
   for i=1:7
        sum712(i)=(sum712(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum713(i)=(sum713(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum714(i)=(sum714(i)-sum(i))/maxFinal;
    end
        %方案6
   for i=1:7
        sum613(i)=(sum613(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum614(i)=(sum614(i)-sum(i))/maxFinal;
    end
        %方案5
   for i=1:7
        sum511(i)=(sum511(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum512(i)=(sum512(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum514(i)=(sum514(i)-sum(i))/maxFinal;
    end
        %方案4
    for i=1:7
        sum414(i)=(sum414(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum413(i)=(sum413(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum412(i)=(sum412(i)-sum(i))/maxFinal;
    end
        %方案3
    for i=1:7
        sum313(i)=(sum313(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum312(i)=(sum312(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum311(i)=(sum311(i)-sum(i))/maxFinal;
    end
        %方案2
    for i=1:7
        sum212(i)=(sum212(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum211(i)=(sum211(i)-sum(i))/maxFinal;
        
    end
        %方案1
    for i=1:7
        sum113(i)=(sum113(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum112(i)=(sum112(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum111(i)=(sum111(i)-sum(i))/maxFinal;
    end
end
a=1:7;
scheme0=[sum,paixu;];
%sum11为方案1专家1 sum12为方案1专家2
scheme11=[sum111,paixu111;sum112,paixu112;sum113,paixu113;];
scheme21=[sum211,paixu211;sum212,paixu212;];
scheme31=[sum311,paixu311;sum312,paixu312;sum313,paixu313;];
scheme41=[sum412,paixu412;sum413,paixu413;sum414,paixu414;];
scheme51=[sum511,paixu511;sum512,paixu512;sum514,paixu514;];
scheme61=[sum613,paixu613;sum614,paixu614;];
scheme71=[sum712,paixu712;sum713,paixu713;sum714,paixu714;];
scheme111=[scheme0;a,linspace(1,1,7);scheme11;a,linspace(2,2,7);scheme21;a,linspace(3,3,7);scheme31;a,linspace(4,4,7);scheme41;a,linspace(5,5,7);scheme51;a,linspace(6,6,7);scheme61;a,linspace(7,7,7);scheme71];
disp(scheme111);
final_1=[sum111(1),sum112(1),sum113(1),0;
       sum211(2),sum212(2),0,0;
       sum311(3),sum312(3),sum313(3),0;
       0,sum412(4),sum413(4),sum414(4);
       sum511(5),sum512(5),0,sum514(5);
       0,0,sum613(6),sum614(6);
       0,sum712(7),sum713(7),sum714(7);];
final_1abs=zeros(7,4);
 for i=1:7
     for k=1:4
       final_1abs(i,k)=abs(final_1(i,k));
%         if(0.09<final_1abs(i,k)&&final_1abs(i,k)<0.10)
%             final_1abs(i,k)=final_1abs(i,k)-0.05;       
%         elseif(final_1abs(i,k)>0.10)
%             final_1abs(i,k)=final_1abs(i,k)/10;
%         end
     end
 end
 %% 属性2
Max2=1600;deta2=Max2*sita;
%% 方案1
%专家1
disp('****************方案1 专家1***************************************************************************');
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(1,2)=x1L(1,2)+deta2;x1U(1,2)=x1U(1,2)+deta2;
[sum121,paixu121]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(1,2)=x2L(1,2)+deta2;x2U(1,2)=x2U(1,2)+deta2;
[sum122,paixu122]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(1,2)=x3L(1,2)+deta2;x3U(1,2)=x3U(1,2)+deta2;
[sum123,paixu123]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案2
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(2,2)=x1L(2,2)+deta2;x1U(2,2)=x1U(2,2)+deta2;
[sum221,paixu221]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(2,2)=x2L(2,2)+deta2;x2U(2,2)=x2U(2,2)+deta2;
[sum222,paixu222]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案3  
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(3,2)=x1L(3,2)+deta2;x1U(3,2)=x1U(3,2)+deta2;
[sum321,paixu321]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(3,2)=x2L(3,2)+deta2;x2U(3,2)=x2U(3,2)+deta2;
[sum322,paixu322]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(3,2)=x3L(3,2)+deta2;x3U(3,2)=x3U(3,2)+deta2;
[sum323,paixu323]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案4 
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(4,2)=x2L(4,2)+deta2;x2U(4,2)=x2U(4,2)+deta2;
[sum422,paixu422]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(4,2)=x3L(4,2)+deta2;x3U(4,2)=x3U(4,2)+deta2;
[sum423,paixu423]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(4,2)=x4L(4,2)+deta2;x4U(4,2)=x4U(4,2)+deta2;
[sum424,paixu424]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案5 
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(5,2)=x1L(5,2)+deta2;x1U(5,2)=x1U(5,2)+deta2;
[sum521,paixu521]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(5,2)=x2L(5,2)+deta2;x2U(5,2)=x2U(5,2)+deta2;
[sum522,paixu522]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(5,2)=x4L(5,2)+deta2;x4U(5,2)=x4U(5,2)+deta2;
[sum524,paixu524]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案6 
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(6,2)=x3L(6,2)+deta2;x3U(6,2)=x3U(6,2)+deta2;
[sum623,paixu623]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(6,2)=x4L(6,2)+deta2;x4U(6,2)=x4U(6,2)+deta2;
[sum624,paixu624]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%% 方案7 
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(7,2)=x2L(7,2)+deta2;x2U(7,2)=x2U(7,2)+deta2;
[sum722,paixu722]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(7,2)=x3L(7,2)+deta2;x3U(7,2)=x3U(7,2)+deta2;
[sum723,paixu723]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(7,2)=x4L(7,2)+deta2;x4U(7,2)=x4U(7,2)+deta2;
[sum724,paixu724]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);
flag=1;
if(flag==1)
    %方案7
   for i=1:7
        sum722(i)=(sum722(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum723(i)=(sum723(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum724(i)=(sum724(i)-sum(i))/maxFinal;
    end
        %方案6
   for i=1:7
        sum623(i)=(sum623(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum624(i)=(sum624(i)-sum(i))/maxFinal;
    end
        %方案5
   for i=1:7
        sum521(i)=(sum521(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum522(i)=(sum522(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum524(i)=(sum524(i)-sum(i))/maxFinal;
    end
        %方案4
    for i=1:7
        sum424(i)=(sum424(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum423(i)=(sum423(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum422(i)=(sum422(i)-sum(i))/maxFinal;
    end
        %方案3
    for i=1:7
        sum323(i)=(sum323(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum322(i)=(sum322(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum321(i)=(sum321(i)-sum(i))/maxFinal;
    end
        %方案2
    for i=1:7
        sum222(i)=(sum222(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum221(i)=(sum221(i)-sum(i))/maxFinal;
        
    end
        %方案1
    for i=1:7
        sum123(i)=(sum123(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum122(i)=(sum122(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum121(i)=(sum121(i)-sum(i))/maxFinal;
    end
end
a=1:7;
scheme0=[sum,paixu;];
%sum11为方案1专家1 sum12为方案1专家2
scheme121=[sum121,paixu121;sum122,paixu122;sum123,paixu123;];
scheme221=[sum221,paixu221;sum222,paixu222;];
scheme321=[sum321,paixu321;sum322,paixu322;sum323,paixu323;];
scheme421=[sum422,paixu422;sum423,paixu423;sum424,paixu424;];
scheme521=[sum521,paixu521;sum522,paixu522;sum524,paixu524;];
scheme621=[sum623,paixu623;sum624,paixu624;];
scheme721=[sum722,paixu722;sum723,paixu723;sum724,paixu724;];
scheme222=[scheme0;a,linspace(1,1,7);scheme121;a,linspace(2,2,7);scheme221;a,linspace(3,3,7);scheme321;a,linspace(4,4,7);scheme421;a,linspace(5,5,7);scheme521;a,linspace(6,6,7);scheme621;a,linspace(7,7,7);scheme721];
disp(scheme222);
final_2=[sum121(1),sum122(1),sum123(1),0;
       sum221(2),sum222(2),0,0;
       sum321(3),sum322(3),sum323(3),0;
       0,sum422(4),sum423(4),sum424(4);
       sum521(5),sum522(5),0,sum524(5);
       0,0,sum623(6),sum624(6);
       0,sum722(7),sum723(7),sum724(7);];
final_2abs=zeros(7,4);
 for i=1:7
     for k=1:4
        final_2abs(i,k)=abs(final_2(i,k));
%         if(0.09<final_2abs(i,k)&&final_2abs(i,k)<0.10)
%             final_2abs(i,k)=final_2abs(i,k)-0.05;       
%         elseif(final_2abs(i,k)>0.10)
%             final_2abs(i,k)=final_2abs(i,k)/10;
%         end
     end
 end
%% 属性3
Max=0.85;deta=Max*sita;
%% 方案1
%专家1
disp('****************方案1 专家1***************************************************************************');
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(1,3)=x1L(1,3)+deta;x1U(1,3)=x1U(1,3)+deta;
[sum11,paixu11]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(1,3)=x2L(1,3)+deta;x2U(1,3)=x2U(1,3)+deta;
[sum12,paixu12]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(1,3)=x3L(1,3)+deta;x3U(1,3)=x3U(1,3)+deta;
[sum13,paixu13]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家5
% x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
% x5L(1,3)=x5L(1,3)+deta;x5U(1,3)=x5U(1,3)+deta;
% [sum15,paixu15]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%% 方案2
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(2,3)=x1L(2,3)+deta;x1U(2,3)=x1U(2,3)+deta;
[sum21,paixu21]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(2,3)=x2L(2,3)+deta;x2U(2,3)=x2U(2,3)+deta;
[sum22,paixu22]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%% 方案3  
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(3,3)=x1L(3,3)+deta;x1U(3,3)=x1U(3,3)+deta;
[sum31,paixu31]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(3,3)=x2L(3,3)+deta;x2U(3,3)=x2U(3,3)+deta;
[sum32,paixu32]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(3,3)=x3L(3,3)+deta;x3U(3,3)=x3U(3,3)+deta;
[sum33,paixu33]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%% 方案4 
%专家1
% x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
% x1L(4,3)=x1L(4,3)+deta;x1U(4,3)=x1U(4,3)+deta;
% [sum41,paixu41]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(4,3)=x2L(4,3)+deta;x2U(4,3)=x2U(4,3)+deta;
[sum42,paixu42]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(4,3)=x3L(4,3)+deta;x3U(4,3)=x3U(4,3)+deta;
[sum43,paixu43]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(4,3)=x4L(4,3)+deta;x4U(4,3)=x4U(4,3)+deta;
[sum44,paixu44]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家5
% x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
% x5L(4,3)=x5L(4,3)+deta;x5U(4,3)=x5U(4,3)+deta;
% [sum45,paixu45]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%% 方案5 
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x1L(5,3)=x1L(5,3)+deta;x1U(5,3)=x1U(5,3)+deta;
[sum51,paixu51]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(5,3)=x2L(5,3)+deta;x2U(5,3)=x2U(5,3)+deta;
[sum52,paixu52]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(5,3)=x4L(5,3)+deta;x4U(5,3)=x4U(5,3)+deta;
[sum54,paixu54]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家5
% x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
% x5L(5,3)=x5L(5,3)+deta;x5U(5,3)=x5U(5,3)+deta;
% [sum55,paixu55]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%% 方案6 
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(6,3)=x3L(6,3)+deta;x3U(6,3)=x3U(6,3)+deta;
[sum63,paixu63]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(6,3)=x4L(6,3)+deta;x4U(6,3)=x4U(6,3)+deta;
[sum64,paixu64]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%% 方案7 
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x2L(7,3)=x2L(7,3)+deta;x2U(7,3)=x2U(7,3)+deta;
[sum72,paixu72]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x3L(7,3)=x3L(7,3)+deta;x3U(7,3)=x3U(7,3)+deta;
[sum73,paixu73]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);
x4L(7,3)=x4L(7,3)+deta;x4U(7,3)=x4U(7,3)+deta;
[sum74,paixu74]=changeTo5_0306(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U);

disp('sum21(2)-sum(2)');disp(sum21(2)-sum(2));
disp('maxFinal');disp(maxFinal);
flag=1;
if(flag==1)
    %方案7
   for i=1:7
        sum72(i)=(sum72(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum73(i)=(sum73(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum74(i)=(sum74(i)-sum(i))/maxFinal;
    end
        %方案6
   for i=1:7
        sum63(i)=(sum63(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum64(i)=(sum64(i)-sum(i))/maxFinal;
    end
        %方案5
   for i=1:7
        sum51(i)=(sum51(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum52(i)=(sum52(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum54(i)=(sum54(i)-sum(i))/maxFinal;
    end
        %方案4
    for i=1:7
        sum44(i)=(sum44(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum43(i)=(sum43(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum42(i)=(sum42(i)-sum(i))/maxFinal;
    end
        %方案3
    for i=1:7
        sum33(i)=(sum33(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum32(i)=(sum32(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum31(i)=(sum31(i)-sum(i))/maxFinal;
    end
        %方案2
    for i=1:7
        sum22(i)=(sum22(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum21(i)=(sum21(i)-sum(i))/maxFinal;
        
    end
        %方案1
    for i=1:7
        sum13(i)=(sum13(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum12(i)=(sum12(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum11(i)=(sum11(i)-sum(i))/maxFinal;
    end
end
a=1:7;
scheme0=[sum,paixu;];
%sum11为方案1专家1 sum12为方案1专家2
scheme1=[sum11,paixu11;sum12,paixu12;sum13,paixu13;];
scheme2=[sum21,paixu21;sum22,paixu22;];
scheme3=[sum31,paixu31;sum32,paixu32;sum33,paixu33;];
scheme4=[sum42,paixu42;sum43,paixu43;sum44,paixu44;];
scheme5=[sum51,paixu51;sum52,paixu52;sum54,paixu54;];
scheme6=[sum63,paixu63;sum64,paixu64;];
scheme7=[sum72,paixu72;sum73,paixu73;sum74,paixu74;];
scheme=[scheme0;a,linspace(1,1,7);scheme1;a,linspace(2,2,7);scheme2;a,linspace(3,3,7);scheme3;a,linspace(4,4,7);scheme4;a,linspace(5,5,7);scheme5;a,linspace(6,6,7);scheme6;a,linspace(7,7,7);scheme7];
disp(scheme);

final=[sum11(1),sum12(1),sum13(1),0;
       sum21(2),sum22(2),0,0;
       sum31(3),sum32(3),sum33(3),0;
       0,sum42(4),sum43(4),sum44(4);
       sum51(5),sum52(5),0,sum54(5);
       0,0,sum63(6),sum64(6);
       0,sum72(7),sum73(7),sum74(7);];
final_3abs=zeros(7,4);
 for i=1:7
     for k=1:4
        final_3abs(i,k)=abs(final(i,k));
%         if(0.09<final_3abs(i,k)&&final_3abs(i,k)<0.10)
%             final_3abs(i,k)=final_3abs(i,k)-0.05;  
%         end
%         if(final_3abs(i,k)>0.10)
%             final_3abs(i,k)=final_3abs(i,k)/10;
%         end
     end
 end   
   
disp('final_1');disp(final_1);
disp('final_2');disp(final_2);
disp('final3');disp(final);
disp('final_1abs');disp(final_1abs);
disp('final_2abs');disp(final_2abs);
disp('final_3abs');disp(final_3abs);

final_ABS=cat(3,final_1abs,final_2abs,final_3abs);
final_sum=0;
for j=1:3
    for i=1:7
        for k=1:4
            final_sum=final_sum+final_ABS(i,k,j);
        end
    end
end
final_ava=final_sum/(3*19);
disp('final_ava');disp(final_ava);
if(sita==-0.05)
    disp('sita=-0.05');
end
if(sita==0.05)
    disp('sita=0.05');
end
disp('scheme0');disp(scheme0);
diff=zeros(1,7);
diff(1)=(abs(sum11(1))+abs(sum12(1))+abs(sum13(1)))/3;
diff(2)=(abs(sum21(2))+abs(sum22(2)))/2;
diff(3)=(abs(sum31(3))+abs(sum32(3))+abs(sum33(3)))/3;
diff(4)=(abs(sum42(4))+abs(sum43(4))+abs(sum44(4)))/3;
diff(5)=(abs(sum51(5))+abs(sum52(5))+abs(sum54(5)))/3;
diff(6)=(abs(sum63(6))+abs(sum64(6)))/2;
diff(7)=(abs(sum72(7))+abs(sum73(7))+abs(sum74(7)))/3;
disp('方案最终前景价值变化量diff');disp(diff);
a2=(diff(2)+diff(6))/2;
a3=(diff(1)+diff(3)+diff(4)+diff(5)+diff(7))/5;
a_avl=(a2+a3)/2;
disp('a2');disp(a2);disp('a3');disp(a3);disp('a_avl');disp(a_avl);

