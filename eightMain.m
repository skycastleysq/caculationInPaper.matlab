clearvars;
clc;
% 
% x1L=[15,700 ,0.70;25,750 ,0.55;20,800 ,0.70;15,700 ,0.60;20,800 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
% x1U=[30,1200,0.85;40,1300,0.70;35,1400,0.80;30,1500,0.75;50,1400,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
% x2L=[15,850 ,0.65;20,800 ,0.65;20,700 ,0.65;20,800 ,0.65;25,600 ,0.60;0 ,  0 ,   0;25,800 ,0.55;];
% x2U=[30,1400,0.80;40,1500,0.85;35,1400,0.75;40,1500,0.80;40,1500,0.75;0 ,  0 ,   0;50,1500,0.65;];
% x3L=[15,800 ,0.65;0 ,  0 ,   0;20,750 ,0.65;20,700 ,0.70;0 ,  0 ,   0;15,900 ,0.60;25,950 ,0.55];
% x3U=[30,1500,0.80;0 ,  0 ,   0;35,1400,0.80;35,1400,0.85;0 ,  0 ,   0;35,1400,0.70;50,1700,0.65;];
% x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;20,650 ,0.55;15,550 ,0.70;25,700 ,0.50;25,950 ,0.55;];
% x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;45,1500,0.70;35,1200,0.80;50,1300,0.65;45,1700,0.70;];
% x5L=[20,850 ,0.60;0 ,  0 ,   0;0 ,  0 ,   0;25,750 ,0.65;25,850 ,0.65;0 ,   0,   0; 0,   0,   0;];
% x5U=[35,1500,0.80;0 ,  0 ,   0;0 ,  0 ,   0;35,1600,0.75;40,1300,0.80;0 ,   0,   0; 0,   0,   0;];
% 
% x6L=[20,850 ,0.70;0 ,  0 ,   0;20,600 ,0.60;15,700 ,0.60;15,650 ,0.60;0 ,  0 ,   0;0 ,  0 ,   0;];
% x6U=[35,1500,0.80;0 ,  0 ,   0;40,1400,0.75;40,1400,0.80;35,1400,0.75;0 ,  0 ,   0;0 ,  0 ,   0;];
% x7L=[15,750 ,0.65;20,700 ,0.65;0 ,  0 ,   0;15,700 ,0.65;20,650 ,0.65;0 ,  0 ,   0;20,700 ,0.60;];
% x7U=[30,1400,0.80;40,1400,0.80;0 ,  0 ,   0;40,1400,0.75;40,1400,0.80;0 ,  0 ,   0;45,1500,0.70;];
% x8L=[15,800 ,0.70;0 ,  0 ,   0;0 ,  0 ,   0;20,800 ,0.65;0 ,  0 ,   0;0 ,  0 ,   0;25,800 ,0.55;];
% x8U=[35,1400,0.75;0 ,  0 ,   0;0 ,  0 ,   0;35,1500,0.80;0 ,  0 ,   0;0 ,  0 ,   0;40,1600,0.70;];

x1L=[20,600 ,0.60;25,800 ,0.65;20,800 ,0.75;0 ,  0 ,   0;25,700 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
x1U=[35,1300,0.80;35,1500,0.80;40,1400,0.85;0 ,  0 ,   0;40,1500,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
x2L=[25,700 ,0.70;15,600 ,0.60;20,750 ,0.70;20,600 ,0.70;25,600 ,0.60;0 ,  0 ,   0;15,600 ,0.70;];
x2U=[40,1400,0.85;35,1300,0.75;35,1400,0.85;35,1300,0.85;45,1400,0.75;0 ,  0 ,   0;30,1350,0.85;];
x3L=[15,750 ,0.65;0 ,   0 ,   0;20,600 ,0.70;15,500 ,0.70;0 ,  0 ,   0;15,500 ,0.74;15,500 ,0.70;];
x3U=[30,1400,0.75;0 ,  0 ,   0;35,1500,0.80;35,1200,0.80;0 ,  0 ,   0;30,1200,0.85;30,1300,0.80;];
x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;15,650 ,0.65;15,750 ,0.70;20,600 ,0.70;15,600 ,0.70;];
x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;30,1600,0.85;35,1400,0.85;30,1300,0.80;35,1300,0.85;];

x1L=[20,600 ,0.60;20,700 ,0.65;20,700 ,0.75;0 ,  0 ,   0;25,700 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
x1U=[35,1300,0.80;35,1400,0.80;40,1400,0.85;0 ,  0 ,   0;40,1500,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
x2L=[25,700 ,0.70;15,600 ,0.60;20,750 ,0.70;20,600 ,0.70;25,600 ,0.60;0 ,  0 ,   0;15,600 ,0.70;];
x2U=[40,1400,0.85;35,1300,0.75;35,1400,0.85;35,1300,0.85;45,1400,0.75;0 ,  0 ,   0;30,1350,0.85;];
x3L=[15,750 ,0.65;0 ,   0,   0;20,600 ,0.70;15,500 ,0.70;0 ,  0 ,   0;15,500 ,0.74;15,500 ,0.70;];
x3U=[30,1400,0.75;0 ,  0 ,   0;35,1500,0.80;35,1200,0.80;0 ,  0 ,   0;30,1200,0.85;30,1300,0.80;];
x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;15,650 ,0.65;20,750 ,0.70;20,600 ,0.70;15,600 ,0.70;];
x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;30,1600,0.85;35,1400,0.85;30,1300,0.80;35,1300,0.85;];

x1L=[20,600 ,0.60;20,700 ,0.65;20,700 ,0.75;0 ,  0 ,   0;25,700 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
x1U=[35,1300,0.80;35,1400,0.80;40,1400,0.85;0 ,  0 ,   0;40,1500,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
x2L=[25,700 ,0.70;15,600 ,0.60;20,750 ,0.70;20,600 ,0.70;25,600 ,0.60;0 ,  0 ,   0;15,700 ,0.70;];
x2U=[40,1400,0.85;35,1300,0.75;35,1400,0.85;35,1300,0.85;45,1400,0.75;0 ,  0 ,   0;30,1400,0.85;];
x3L=[15,750 ,0.65;0 ,   0,   0;20,600 ,0.70;15,500 ,0.70;0 ,  0 ,   0;15,500 ,0.74;15,600 ,0.70;];
x3U=[30,1400,0.75;0 ,  0 ,   0;35,1500,0.80;35,1400,0.80;0 ,  0 ,   0;30,1200,0.85;30,1300,0.80;];
x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;15,650 ,0.65;20,750 ,0.70;20,550 ,0.70;15,600 ,0.70;];
x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;30,1600,0.85;35,1400,0.85;30,1300,0.80;35,1300,0.85;];
% x5L=[20,850 ,0.60;0 ,  0 ,   0;0 ,  0 ,   0;25,750 ,0.65;25,850 ,0.65;0 ,   0,   0; 0,   0,   0;];
% x5U=[35,1500,0.80;0 ,  0 ,   0;0 ,  0 ,   0;35,1600,0.75;40,1500,0.80;0 ,   0,   0; 0,   0,   0;];
% x6L=[20,850 ,0.65;0 ,  0 ,   0;20,600 ,0.75;15,700 ,0.65;15,650 ,0.65;0 ,  0 ,   0;0 ,  0 ,   0;];
% x6U=[35,1500,0.80;0 ,  0 ,   0;40,1400,0.85;40,1500,0.80;35,1400,0.80;0 ,  0 ,   0;0 ,  0 ,   0;];
% x7L=[15,750 ,0.65;20,700 ,0.65;0 ,  0 ,   0;15,700 ,0.65;20,650 ,0.65;0 ,  0 ,   0;20,700 ,0.60;];
% x7U=[30,1400,0.80;40,1400,0.80;0 ,  0 ,   0;40,1500,0.75;40,1400,0.75;0 ,  0 ,   0;45,1500,0.70;];
% x8L=[15,800 ,0.70;0 ,  0 ,   0;0 ,  0 ,   0;20,800 ,0.65;0 ,  0 ,   0;0 ,  0 ,   0;25,800 ,0.60;];
% x8U=[35,1400,0.80;0 ,  0 ,   0;0 ,  0 ,   0;35,1500,0.80;0 ,  0 ,   0;0 ,  0 ,   0;40,1600,0.75;];
x5L=[20,600 ,0.60;0 ,  0 ,   0;0 ,  0 ,   0;15,750 ,0.65;25,650 ,0.65;0 ,   0,   0; 0,   0,   0;];
x5U=[35,1200,0.80;0 ,  0 ,   0;0 ,  0 ,   0;35,1500,0.75;40,1300,0.80;0 ,   0,   0; 0,   0,   0;];
x6L=[20,750 ,0.65;0 ,  0 ,   0;20,600 ,0.75;20,700 ,0.65;15,600 ,0.65;0 ,  0 ,   0;0 ,  0 ,   0;];
x6U=[35,1400,0.80;0 ,  0 ,   0;40,1400,0.85;35,1300,0.80;35,1200,0.80;0 ,  0 ,   0;0 ,  0 ,   0;];
x7L=[15,650 ,0.65;20,650 ,0.65;0 ,  0 ,   0;20,500 ,0.65;20,700 ,0.70;0 ,  0 ,   0;20,600 ,0.65;];
x7U=[30,1400,0.80;40,1350,0.80;0 ,  0 ,   0;40,1200,0.75;40,1300,0.85;0 ,  0 ,   0;45,1200,0.80;];
x8L=[15,500 ,0.70;0 ,  0 ,   0;0 ,  0 ,   0;20,600 ,0.65;0 ,  0 ,   0;0 ,  0 ,   0;20,650 ,0.60;];
x8U=[35,1200,0.80;0 ,  0 ,   0;0 ,  0 ,   0;35,1300,0.80;0 ,  0 ,   0;0 ,  0 ,   0;40,1500,0.75;];

X=cat(3,x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
[sum,paixu]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
maxFinal=max([abs(sum(1)),abs(sum(2)),abs(sum(3)),abs(sum(4)),abs(sum(5)),abs(sum(6)),abs(sum(7))]);
%-0.1结果比较好

sita=-0.1;
Max=0.85;deta=Max*sita;
Max2=1600;deta2=Max2*sita;
Max1=45;deta1=Max1*sita;
%% 方案1
%专家1
disp('****************方案1 专家1***************************************************************************');
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(1,3)=x1L(1,3)+deta;x1U(1,3)=x1U(1,3)+deta;
[sum11,paixu11]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(1,3)=x2L(1,3)+deta;x2U(1,3)=x2U(1,3)+deta;
[sum12,paixu12]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(1,3)=x3L(1,3)+deta;x3U(1,3)=x3U(1,3)+deta;
[sum13,paixu13]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x5L(1,3)=x5L(1,3)+deta;x5U(1,3)=x5U(1,3)+deta;
[sum15,paixu15]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(1,3)=x6L(1,3)+deta;x6U(1,3)=x6U(1,3)+deta;
[sum16,paixu16]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(1,3)=x7L(1,3)+deta;x7U(1,3)=x7U(1,3)+deta;
[sum17,paixu17]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x8L(1,3)=x7L(1,3)+deta;x8U(1,3)=x7U(1,3)+deta;
[sum18,paixu18]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%% 方案2
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(2,3)=x1L(2,3)+deta;x1U(2,3)=x1U(2,3)+deta;
[sum21,paixu21]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(2,3)=x2L(2,3)+deta;x2U(2,3)=x2U(2,3)+deta;
[sum22,paixu22]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(2,3)=x7L(2,3)+deta;x7U(2,3)=x7U(2,3)+deta;
[sum27,paixu27]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案3  
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(3,3)=x1L(3,3)+deta;x1U(3,3)=x1U(3,3)+deta;
[sum31,paixu31]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2 
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(3,3)=x2L(3,3)+deta;x2U(3,3)=x2U(3,3)+deta;
[sum32,paixu32]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(3,3)=x3L(3,3)+deta;x3U(3,3)=x3U(3,3)+deta;
[sum33,paixu33]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(3,3)=x6L(3,3)+deta;x6U(3,3)=x6U(3,3)+deta;
[sum36,paixu36]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案4 
%专家1
% x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
% x1L(4,3)=x1L(4,3)+deta;x1U(4,3)=x1U(4,3)+deta;
% [sum41,paixu41]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(4,3)=x2L(4,3)+deta;x2U(4,3)=x2U(4,3)+deta;
[sum42,paixu42]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(4,3)=x3L(4,3)+deta;x3U(4,3)=x3U(4,3)+deta;
[sum43,paixu43]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(4,3)=x4L(4,3)+deta;x4U(4,3)=x4U(4,3)+deta;
[sum44,paixu44]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x5L(4,3)=x5L(4,3)+deta;x5U(4,3)=x5U(4,3)+deta;
[sum45,paixu45]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(4,3)=x6L(4,3)+deta;x6U(4,3)=x6U(4,3)+deta;
[sum46,paixu46]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(4,3)=x7L(4,3)+deta;x7U(4,3)=x7U(4,3)+deta;
[sum47,paixu47]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x8L(4,3)=x8L(4,3)+deta;x8U(4,3)=x8U(4,3)+deta;
[sum48,paixu48]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案5 
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(5,3)=x1L(5,3)+deta;x1U(5,3)=x1U(5,3)+deta;
[sum51,paixu51]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(5,3)=x2L(5,3)+deta;x2U(5,3)=x2U(5,3)+deta;
[sum52,paixu52]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(5,3)=x4L(5,3)+deta;x4U(5,3)=x4U(5,3)+deta;
[sum54,paixu54]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x5L(5,3)=x5L(5,3)+deta;x5U(5,3)=x5U(5,3)+deta;
[sum55,paixu55]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(5,3)=x6L(5,3)+deta;x6U(5,3)=x6U(5,3)+deta;
[sum56,paixu56]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(5,3)=x7L(5,3)+deta;x7U(5,3)=x6U(5,3)+deta;
[sum57,paixu57]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案6 
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(6,3)=x3L(6,3)+deta;x3U(6,3)=x3U(6,3)+deta;
[sum63,paixu63]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(6,3)=x4L(6,3)+deta;x4U(6,3)=x4U(6,3)+deta;
[sum64,paixu64]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案7 
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(7,3)=x2L(7,3)+deta;x2U(7,3)=x2U(7,3)+deta;
[sum72,paixu72]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(7,3)=x3L(7,3)+deta;x3U(7,3)=x3U(7,3)+deta;
[sum73,paixu73]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(7,3)=x4L(7,3)+deta;x4U(7,3)=x4U(7,3)+deta;
[sum74,paixu74]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(7,3)=x7L(7,3)+deta;x7U(7,3)=x7U(7,3)+deta;
[sum77,paixu77]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x8L(7,3)=x8L(7,3)+deta;x8U(7,3)=x8U(7,3)+deta;
[sum78,paixu78]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);


flag=1;
if(flag==1)
% 方案7
    for i=1:7
        sum72(i)=(sum72(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum73(i)=(sum73(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum74(i)=(sum74(i)-sum(i))/maxFinal;
    end
     for i=1:7
        sum78(i)=(sum78(i)-sum(i))/maxFinal;
    end
% 方案6  
   for i=1:7
        sum63(i)=(sum63(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum64(i)=(sum64(i)-sum(i))/maxFinal;
    end
% 方案5    
   for i=1:7
        sum51(i)=(sum51(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum52(i)=(sum52(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum54(i)=(sum54(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum55(i)=(sum55(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum56(i)=(sum56(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum57(i)=(sum57(i)-sum(i))/maxFinal;
    end
% 方案4 
    for i=1:7
        sum48(i)=(sum48(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum47(i)=(sum47(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum46(i)=(sum46(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum45(i)=(sum45(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum44(i)=(sum44(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum43(i)=(sum43(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum42(i)=(sum42(i)-sum(i))/maxFinal;
    end
%     for i=1:7
%         sum41(i)=(sum41(i)-sum(i))/maxFinal;
%     end
% 方案3   
    for i=1:7
        sum36(i)=(sum36(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum33(i)=(sum33(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum32(i)=(sum32(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum31(i)=(sum31(i)-sum(i))/maxFinal;
    end    
 % 方案2
    for i=1:7
        sum27(i)=(sum27(i)-sum(i))/maxFinal;
    end  
    for i=1:7
        sum22(i)=(sum22(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum21(i)=(sum21(i)-sum(i))/maxFinal;
    end
% 方案1
    for i=1:7
        sum18(i)=(sum18(i)-sum(i))/maxFinal;
    end
     for i=1:7
        sum17(i)=(sum17(i)-sum(i))/maxFinal;
    end
     for i=1:7
        sum16(i)=(sum16(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum15(i)=(sum13(i)-sum(i))/maxFinal;
    end
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
% scheme0=[sum,paixu;];
% scheme1=[sum11,paixu11;sum12,paixu12;sum13,paixu13;sum15,paixu15;];
% scheme2=[sum21,paixu21;sum22,paixu22;];
% scheme3=[sum31,paixu31;sum32,paixu32;sum33,paixu33;];
% scheme4=[sum41,paixu41;sum42,paixu42;sum43,paixu43;sum44,paixu44;sum45,paixu45;];
% scheme5=[sum51,paixu51;sum52,paixu52;sum54,paixu54;sum55,paixu55;];
% scheme6=[sum63,paixu63;sum64,paixu64;];
% scheme7=[sum72,paixu72;sum73,paixu73;sum74,paixu74;];
% scheme=[scheme0;a,linspace(1,1,7);scheme1;a,linspace(2,2,7);scheme2;a,linspace(3,3,7);scheme3;a,linspace(4,4,7);scheme4;a,linspace(5,5,7);scheme5;a,linspace(6,6,7);scheme6;a,linspace(7,7,7);scheme7];
% % disp(scheme);
totalPaixu=[paixu11,paixu12,paixu13,0      ,paixu15,paixu16,paixu17,paixu18;
            paixu21,paixu22,0      ,0      ,0      ,0      ,paixu17,0      ;
            paixu31,paixu32,paixu33,0      ,0      ,paixu36,0      ,0      ;
            0      ,paixu42,paixu43,paixu44,paixu15,paixu16,paixu17,paixu18;
            paixu51,paixu52,0      ,paixu54,paixu55,paixu56,paixu57,0      ;
            0      ,0      ,paixu63,paixu64,0      ,0      ,0      ,0      ;
            0      ,paixu72,paixu73,paixu74,0      ,0      ,paixu77,paixu78;];
      
        totalPaixuTmp=totalPaixu;
for i=1:7
    for k=1:8
        if(totalPaixu(i,k)~=paixu&&totalPaixu(i,k)~=0)
            totalPaixuTmp(i,k)=-1;
        end
    end
end



%% 方案1
%专家1
disp('****************方案1 专家1***************************************************************************');
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(1,2)=x1L(1,2)+deta2;x1U(1,2)=x1U(1,2)+deta2;
[sum121,paixu121]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(1,2)=x2L(1,2)+deta2;x2U(1,2)=x2U(1,2)+deta2;
[sum122,paixu122]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(1,2)=x3L(1,2)+deta2;x3U(1,2)=x3U(1,2)+deta2;
[sum123,paixu123]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x5L(1,2)=x5L(1,2)+deta2;x5U(1,2)=x5U(1,2)+deta2;
[sum125,paixu125]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(1,2)=x6L(1,2)+deta2;x6U(1,2)=x6U(1,2)+deta2;
[sum126,paixu126]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(1,2)=x7L(1,2)+deta2;x7U(1,2)=x7U(1,2)+deta2;
[sum127,paixu127]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x8L(1,2)=x7L(1,2)+deta2;x8U(1,2)=x7U(1,2)+deta2;
[sum128,paixu128]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%% 方案2
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(2,2)=x1L(2,2)+deta2;x1U(2,2)=x1U(2,2)+deta2;
[sum221,paixu221]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(2,2)=x2L(2,2)+deta2;x2U(2,2)=x2U(2,2)+deta2;
[sum222,paixu222]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(2,2)=x7L(2,2)+deta2;x7U(2,2)=x7U(2,2)+deta2;
[sum227,paixu227]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案3  
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(3,2)=x1L(3,2)+deta2;x1U(3,2)=x1U(3,2)+deta2;
[sum321,paixu321]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(3,2)=x2L(3,2)+deta2;x2U(3,2)=x2U(3,2)+deta2;
[sum322,paixu322]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(3,2)=x3L(3,2)+deta2;x3U(3,2)=x3U(3,2)+deta2;
[sum323,paixu323]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(3,2)=x6L(3,2)+deta2;x6U(3,2)=x6U(3,2)+deta2;
[sum326,paixu326]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案4 
%专家1
% x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
% x1L(4,3)=x1L(4,3)+deta2;x1U(4,3)=x1U(4,3)+deta2;
% [sum41,paixu41]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(4,2)=x2L(4,2)+deta2;x2U(4,2)=x2U(4,2)+deta2;
[sum422,paixu422]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(4,2)=x3L(4,2)+deta2;x3U(4,2)=x3U(4,2)+deta2;
[sum423,paixu423]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(4,2)=x4L(4,2)+deta2;x4U(4,2)=x4U(4,2)+deta2;
[sum424,paixu424]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x5L(4,2)=x5L(4,2)+deta2;x5U(4,2)=x5U(4,2)+deta2;
[sum425,paixu425]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(4,2)=x6L(4,2)+deta2;x6U(4,2)=x6U(4,2)+deta2;
[sum426,paixu426]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(4,2)=x7L(4,2)+deta2;x7U(4,2)=x7U(4,2)+deta2;
[sum427,paixu427]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x8L(4,2)=x8L(4,2)+deta2;x8U(4,2)=x8U(4,2)+deta2;
[sum428,paixu428]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案5 
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(5,2)=x1L(5,2)+deta2;x1U(5,2)=x1U(5,2)+deta2;
[sum521,paixu521]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(5,2)=x2L(5,2)+deta2;x2U(5,2)=x2U(5,2)+deta2;
[sum522,paixu522]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(5,2)=x4L(5,2)+deta2;x4U(5,2)=x4U(5,2)+deta2;
[sum524,paixu524]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x5L(5,2)=x5L(5,2)+deta2;x5U(5,2)=x5U(5,2)+deta2;
[sum525,paixu525]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(5,2)=x6L(5,2)+deta2;x6U(5,2)=x6U(5,2)+deta2;
[sum526,paixu526]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(5,2)=x7L(5,2)+deta2;x7U(5,2)=x6U(5,2)+deta2;
[sum527,paixu527]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案6 
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(6,2)=x3L(6,2)+deta2;x3U(6,2)=x3U(6,2)+deta2;
[sum623,paixu623]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(6,2)=x4L(6,2)+deta2;x4U(6,2)=x4U(6,2)+deta2;
[sum624,paixu624]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案7 
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(7,2)=x2L(7,2)+deta2;x2U(7,2)=x2U(7,2)+deta2;
[sum722,paixu722]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(7,2)=x3L(7,2)+deta2;x3U(7,2)=x3U(7,2)+deta2;
[sum723,paixu723]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(7,2)=x4L(7,2)+deta2;x4U(7,2)=x4U(7,2)+deta2;
[sum724,paixu724]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(7,2)=x7L(7,2)+deta2;x7U(7,2)=x7U(7,2)+deta2;
[sum727,paixu727]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x8L(7,2)=x8L(7,2)+deta2;x8U(7,2)=x8U(7,2)+deta2;
[sum728,paixu728]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
totalPaixu2=[paixu121,paixu122,paixu123,0      ,paixu125,paixu126,paixu127,paixu128;
             paixu221,paixu222,0      ,0       ,0       ,0       ,paixu127,0      ;
             paixu321,paixu322,paixu323,0      ,0       ,paixu326,0      ,0      ;
             0      ,paixu422,paixu423,paixu424,paixu125,paixu126,paixu127,paixu128;
            paixu521,paixu522,0      ,paixu524,paixu525,paixu526,paixu527,0      ;
             0      ,0        ,paixu623,paixu624,0      ,0      ,0       ,0      ;
             0      ,paixu722,paixu723,paixu724,0       ,0      ,paixu727,paixu728;];
      
        totalPaixu2Tmp=totalPaixu2;
for i=1:7
    for k=1:8
        if(totalPaixu2(i,k)~=paixu&&totalPaixu2(i,k)~=0)
            totalPaixu2Tmp(i,k)=-1;
        end
    end
end

%% 方案1
%专家1
disp('****************方案1 专家1***************************************************************************');
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(1,1)=x1L(1,1)+deta1;x1U(1,1)=x1U(1,2)+deta1;
[sum111,paixu111]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(1,1)=x2L(1,1)+deta1;x2U(1,1)=x2U(1,1)+deta1;
[sum112,paixu112]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(1,1)=x3L(1,1)+deta1;x3U(1,1)=x3U(1,1)+deta1;
[sum113,paixu113]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x5L(1,1)=x5L(1,1)+deta1;x5U(1,1)=x5U(1,1)+deta1;
[sum115,paixu115]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(1,1)=x6L(1,1)+deta1;x6U(1,1)=x6U(1,1)+deta1;
[sum116,paixu116]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(1,1)=x7L(1,1)+deta1;x7U(1,1)=x7U(1,1)+deta1;
[sum117,paixu117]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x8L(1,1)=x7L(1,1)+deta1;x8U(1,1)=x7U(1,1)+deta1;
[sum118,paixu118]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%% 方案2
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(2,1)=x1L(2,1)+deta1;x1U(2,1)=x1U(2,1)+deta1;
[sum211,paixu211]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(2,1)=x2L(2,1)+deta1;x2U(2,1)=x2U(2,1)+deta1;
[sum212,paixu212]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(2,1)=x7L(2,1)+deta1;x7U(2,1)=x7U(2,1)+deta1;
[sum217,paixu217]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案3  
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(3,1)=x1L(3,1)+deta1;x1U(3,1)=x1U(3,1)+deta1;
[sum311,paixu311]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(3,1)=x2L(3,1)+deta1;x2U(3,1)=x2U(3,1)+deta1;
[sum312,paixu312]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(3,1)=x3L(3,1)+deta1;x3U(3,1)=x3U(3,1)+deta1;
[sum313,paixu313]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(3,1)=x6L(3,1)+deta1;x6U(3,1)=x6U(3,1)+deta1;
[sum316,paixu316]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案4 
%专家1
% x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
% x1L(4,3)=x1L(4,3)+deta1;x1U(4,3)=x1U(4,3)+deta1;
% [sum41,paixu41]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(4,1)=x2L(4,1)+deta1;x2U(4,1)=x2U(4,1)+deta1;
[sum412,paixu412]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(4,1)=x3L(4,1)+deta1;x3U(4,1)=x3U(4,1)+deta1;
[sum413,paixu413]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(4,1)=x4L(4,1)+deta1;x4U(4,1)=x4U(4,1)+deta1;
[sum414,paixu414]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x5L(4,1)=x5L(4,1)+deta1;x5U(4,1)=x5U(4,1)+deta1;
[sum415,paixu415]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(4,1)=x6L(4,1)+deta1;x6U(4,1)=x6U(4,1)+deta1;
[sum416,paixu416]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(4,1)=x7L(4,1)+deta1;x7U(4,1)=x7U(4,1)+deta1;
[sum417,paixu417]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x8L(4,1)=x8L(4,1)+deta1;x8U(4,1)=x8U(4,1)+deta1;
[sum418,paixu418]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案5 
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x1L(5,1)=x1L(5,1)+deta1;x1U(5,1)=x1U(5,1)+deta1;
[sum511,paixu511]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(5,1)=x2L(5,1)+deta1;x2U(5,1)=x2U(5,1)+deta1;
[sum512,paixu512]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(5,1)=x4L(5,1)+deta1;x4U(5,1)=x4U(5,1)+deta1;
[sum514,paixu514]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x5L(5,1)=x5L(5,1)+deta1;x5U(5,1)=x5U(5,1)+deta1;
[sum515,paixu515]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x6L(5,1)=x6L(5,1)+deta1;x6U(5,1)=x6U(5,1)+deta1;
[sum516,paixu516]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(5,1)=x7L(5,1)+deta1;x7U(5,1)=x6U(5,1)+deta1;
[sum517,paixu517]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案6 
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(6,1)=x3L(6,1)+deta1;x3U(6,1)=x3U(6,1)+deta1;
[sum613,paixu613]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(6,1)=x4L(6,1)+deta1;x4U(6,1)=x4U(6,1)+deta1;
[sum614,paixu614]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案7 
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x2L(7,1)=x2L(7,1)+deta1;x2U(7,1)=x2U(7,1)+deta1;
[sum712,paixu712]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x3L(7,1)=x3L(7,1)+deta1;x3U(7,1)=x3U(7,1)+deta1;
[sum713,paixu713]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x4L(7,1)=x4L(7,1)+deta1;x4U(7,1)=x4U(7,2)+deta1;
[sum714,paixu714]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x7L(7,1)=x7L(7,1)+deta1;x7U(7,1)=x7U(7,2)+deta1;
[sum717,paixu717]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
x8L(7,1)=x8L(7,1)+deta1;x8U(7,1)=x8U(7,1)+deta1;
[sum718,paixu718]=eight_Pros_SimlarityCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
totalPaixu1=[paixu111,paixu112,paixu113,0      ,paixu115,paixu116,paixu117,paixu118;
             paixu211,paixu212,0      ,0       ,0       ,0       ,paixu117,0      ;
             paixu311,paixu312,paixu313,0      ,0       ,paixu316,0      ,0      ;
             0       ,paixu412,paixu413,paixu414,paixu115,paixu116,paixu117,paixu118;
            paixu511 ,paixu512,0      ,paixu514,paixu515,paixu516,paixu517,0      ;
             0       ,0       ,paixu613,paixu614,0      ,0      ,0       ,0      ;
             0       ,paixu712,paixu713,paixu714,0       ,0      ,paixu717,paixu718;];
      
        totalPaixu1Tmp=totalPaixu1;
for i=1:7
    for k=1:8
        if(totalPaixu1(i,k)~=paixu&&totalPaixu1(i,k)~=0)
            totalPaixu1Tmp(i,k)=-1;
        end
    end
end
  disp(totalPaixu);
 disp(totalPaixuTmp); 
   disp(totalPaixu2);
 disp(totalPaixu2Tmp); 
 
   disp(totalPaixu2);
 disp(totalPaixu2Tmp); 
 
 disp(paixu);diff=zeros(1,7);
diff(1)=(abs(sum11(1))+abs(sum12(1))+abs(sum13(1))+abs(sum15(1))+abs(sum16(1))+abs(sum17(1))+abs(sum18(1)))/7;
diff(2)=(abs(sum21(2))+abs(sum22(2))+abs(sum27(2)))/3;
diff(3)=(abs(sum31(3))+abs(sum32(3))+abs(sum33(3))+abs(sum36(3)))/4;
diff(4)=(abs(sum42(4))+abs(sum43(4))+abs(sum44(4))+abs(sum45(4))+abs(sum46(4))+abs(sum47(4))+abs(sum48(4)))/7;
diff(5)=(abs(sum51(5))+abs(sum52(5))+abs(sum54(5))+abs(sum55(5))+abs(sum56(5))+abs(sum57(5)))/6;
diff(6)=(abs(sum63(6))+abs(sum64(6)))/2;
diff(7)=(abs(sum72(7))+abs(sum73(7))+abs(sum74(7))+abs(sum77(7))+abs(sum78(7)))/5;
disp('方案最终前景价值变化量diff');disp(diff);
A=zeros(1,6);
A(1)=diff(6);A(2)=diff(2);A(3)=diff(3);A(4)=diff(7);A(5)=diff(5);A(6)=(diff(1)+diff(4))/2;
disp(A);
figure(1);
title('第3个属性');
plot(A,'-*');

flag=1;
if(flag==1)
% 方案7
    for i=1:7
        sum722(i)=(sum722(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum723(i)=(sum723(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum724(i)=(sum724(i)-sum(i))/maxFinal;
    end
     for i=1:7
        sum728(i)=(sum728(i)-sum(i))/maxFinal;
    end
% 方案6  
   for i=1:7
        sum623(i)=(sum623(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum624(i)=(sum624(i)-sum(i))/maxFinal;
    end
% 方案5    
   for i=1:7
        sum521(i)=(sum521(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum522(i)=(sum522(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum524(i)=(sum524(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum525(i)=(sum525(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum526(i)=(sum526(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum527(i)=(sum527(i)-sum(i))/maxFinal;
    end
% 方案4 
    for i=1:7
        sum428(i)=(sum428(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum427(i)=(sum427(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum426(i)=(sum426(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum425(i)=(sum425(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum424(i)=(sum424(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum423(i)=(sum423(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum422(i)=(sum422(i)-sum(i))/maxFinal;
    end
%     for i=1:7
%         sum41(i)=(sum41(i)-sum(i))/maxFinal;
%     end
% 方案3   
    for i=1:7
        sum326(i)=(sum326(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum323(i)=(sum323(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum322(i)=(sum322(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum321(i)=(sum321(i)-sum(i))/maxFinal;
    end    
 % 方案2
    for i=1:7
        sum227(i)=(sum227(i)-sum(i))/maxFinal;
    end  
    for i=1:7
        sum222(i)=(sum222(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum221(i)=(sum221(i)-sum(i))/maxFinal;
    end
% 方案1
    for i=1:7
        sum128(i)=(sum128(i)-sum(i))/maxFinal;
    end
     for i=1:7
        sum127(i)=(sum127(i)-sum(i))/maxFinal;
    end
     for i=1:7
        sum126(i)=(sum126(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum125(i)=(sum123(i)-sum(i))/maxFinal;
    end
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
diff2=zeros(1,7);
diff2(1)=(abs(sum121(1))+abs(sum122(1))+abs(sum123(1))+abs(sum125(1))+abs(sum126(1))+abs(sum127(1))+abs(sum128(1)))/7;
diff2(2)=(abs(sum221(2))+abs(sum222(2))+abs(sum227(2)))/3;
diff2(3)=(abs(sum321(3))+abs(sum322(3))+abs(sum323(3))+abs(sum326(3)))/4;
diff2(4)=(abs(sum422(4))+abs(sum423(4))+abs(sum424(4))+abs(sum425(4))+abs(sum426(4))+abs(sum427(4))+abs(sum428(4)))/7;
diff2(5)=(abs(sum521(5))+abs(sum522(5))+abs(sum524(5))+abs(sum525(5))+abs(sum526(5))+abs(sum527(5)))/6;
diff2(6)=(abs(sum623(6))+abs(sum624(6)))/2;
diff2(7)=(abs(sum722(7))+abs(sum723(7))+abs(sum724(7))+abs(sum727(7))+abs(sum728(7)))/5;
disp('方案最终前景价值变化量diff2');disp(diff2);
A2=zeros(1,6);
A2(1)=diff2(6);A2(2)=diff2(2);A2(3)=diff2(3);A2(4)=diff2(7);A2(5)=diff2(5);A2(6)=(diff2(1)+diff2(4))/2;
disp(A2);
disp('第二个属性图');
figure(2);
title('第2个属性');

plot(A2,'-*');


flag=1;
if(flag==1)
% 方案7
    for i=1:7
        sum712(i)=(sum712(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum713(i)=(sum713(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum714(i)=(sum714(i)-sum(i))/maxFinal;
    end
     for i=1:7
        sum718(i)=(sum718(i)-sum(i))/maxFinal;
    end
% 方案6  
   for i=1:7
        sum613(i)=(sum613(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum614(i)=(sum614(i)-sum(i))/maxFinal;
    end
% 方案5    
   for i=1:7
        sum511(i)=(sum511(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum512(i)=(sum512(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum514(i)=(sum514(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum515(i)=(sum515(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum516(i)=(sum516(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum517(i)=(sum517(i)-sum(i))/maxFinal;
    end
% 方案4 
    for i=1:7
        sum418(i)=(sum418(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum417(i)=(sum417(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum416(i)=(sum416(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum415(i)=(sum415(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum414(i)=(sum414(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum413(i)=(sum413(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum412(i)=(sum412(i)-sum(i))/maxFinal;
    end
%     for i=1:7
%         sum41(i)=(sum41(i)-sum(i))/maxFinal;
%     end
% 方案3   
    for i=1:7
        sum316(i)=(sum316(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum313(i)=(sum313(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum312(i)=(sum312(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum311(i)=(sum311(i)-sum(i))/maxFinal;
    end    
 % 方案2
    for i=1:7
        sum217(i)=(sum217(i)-sum(i))/maxFinal;
    end  
    for i=1:7
        sum212(i)=(sum212(i)-sum(i))/maxFinal;
    end    
    for i=1:7
        sum211(i)=(sum211(i)-sum(i))/maxFinal;
    end
% 方案1
    for i=1:7
        sum118(i)=(sum118(i)-sum(i))/maxFinal;
    end
     for i=1:7
        sum117(i)=(sum117(i)-sum(i))/maxFinal;
    end
     for i=1:7
        sum116(i)=(sum116(i)-sum(i))/maxFinal;
    end
    for i=1:7
        sum115(i)=(sum113(i)-sum(i))/maxFinal;
    end
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
diff1=zeros(1,7);
diff1(1)=(abs(sum111(1))+abs(sum112(1))+abs(sum113(1))+abs(sum115(1))+abs(sum116(1))+abs(sum117(1))+abs(sum118(1)))/7;
diff1(2)=(abs(sum211(2))+abs(sum212(2))+abs(sum217(2)))/3;
diff1(3)=(abs(sum311(3))+abs(sum312(3))+abs(sum313(3))+abs(sum316(3)))/4;
diff1(4)=(abs(sum412(4))+abs(sum413(4))+abs(sum414(4))+abs(sum415(4))+abs(sum416(4))+abs(sum417(4))+abs(sum418(4)))/7;
diff1(5)=(abs(sum511(5))+abs(sum512(5))+abs(sum514(5))+abs(sum515(5))+abs(sum516(5))+abs(sum517(5)))/6;
diff1(6)=(abs(sum613(6))+abs(sum614(6)))/2;
diff1(7)=(abs(sum712(7))+abs(sum713(7))+abs(sum714(7))+abs(sum717(7))+abs(sum718(7)))/5;
disp('方案最终前景价值变化量diff1');disp(diff1);
A1=zeros(1,6);
A1(1)=diff1(6);A1(2)=diff1(2);A1(3)=diff1(3);A1(4)=diff1(7);A1(5)=diff1(5);A1(6)=(diff1(1)+diff1(4))/2;
disp(A1);
figure(3);
title('第一个属性');
plot(A1,'-*');
