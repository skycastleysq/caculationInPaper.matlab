clearvars;
clc;
x1L=[20,600 ,0.60;25,800 ,0.65;20,800 ,0.70;0 ,  0 ,   0;25,700 ,0.65;0 ,  0 ,   0;0 ,0   ,   0;];
x1U=[35,1300,0.80;35,1500,0.80;40,1400,0.85;0 ,  0 ,   0;40,1500,0.80;0 ,  0 ,   0;0 ,0   ,   0;];
x2L=[25,700 ,0.70;15,600 ,0.60;20,750 ,0.70;20,600 ,0.70;25,600 ,0.60;0 ,  0 ,   0;15,600 ,0.70;];
x2U=[40,1400,0.85;35,1300,0.75;35,1400,0.85;35,1300,0.85;45,1400,0.70;0 ,  0 ,   0;30,1350,0.85;];
x3L=[15,750 ,0.65;0 ,  0 ,   0;20,600 ,0.70;15,500 ,0.70;0 ,  0 ,   0;15,500 ,0.74;15,500 ,0.70;];
x3U=[30,1400,0.75;0 ,  0 ,   0;35,1500,0.80;35,1200,0.80;0 ,  0 ,   0;30,1200,0.85;30,1300,0.80;];
x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;15,650 ,0.65;15,750 ,0.70;20,600 ,0.70;15,600 ,0.70;];
x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;30,1600,0.85;35,1400,0.85;30,1300,0.80;35,1300,0.85;];

x5L=[20,600 ,0.60;0 ,  0 ,   0;0 ,  0 ,   0;15,750 ,0.65;25,650 ,0.65;0 ,   0,   0; 0,   0,   0;];
x5U=[35,1200,0.80;0 ,  0 ,   0;0 ,  0 ,   0;35,1500,0.75;40,1300,0.80;0 ,   0,   0; 0,   0,   0;];
x6L=[20,750 ,0.65;0 ,  0 ,   0;20,600 ,0.75;20,700 ,0.65;15,600 ,0.65;0 ,  0 ,   0;0 ,  0 ,   0;];
x6U=[35,1400,0.80;0 ,  0 ,   0;40,1400,0.85;35,1300,0.80;35,1200,0.85;0 ,  0 ,   0;0 ,  0 ,   0;];
x7L=[15,650 ,0.65;20,650 ,0.65;0 ,  0 ,   0;20,500 ,0.65;20,700 ,0.70;0 ,  0 ,   0;20,600 ,0.65;];
x7U=[30,1400,0.80;40,1350,0.80;0 ,  0 ,   0;40,1200,0.75;40,1300,0.80;0 ,  0 ,   0;45,1200,0.80;];
x8L=[15,500 ,0.70;0 ,  0 ,   0;0 ,  0 ,   0;20,600 ,0.65;0 ,  0 ,   0;0 ,  0 ,   0;20,650 ,0.60;];
x8U=[35,1200,0.80;0 ,  0 ,   0;0 ,  0 ,   0;35,1300,0.80;0 ,  0 ,   0;0 ,  0 ,   0;40,1500,0.75;];

X=cat(3,x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
[sum,paixu]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
maxFinal=max([abs(sum(1)),abs(sum(2)),abs(sum(3)),abs(sum(4)),abs(sum(5)),abs(sum(6)),abs(sum(7))]);

Max=0.85;deta=Max*0.05;
%% 方案1
%专家1
disp('****************方案1 专家1***************************************************************************');
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x1L(1,j)=0;  x1U(1,j)=0;
end
[sum11,paixu11]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x2L(1,j)=0;  x2U(1,j)=0;
end
[sum12,paixu12]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x3L(1,j)=0;  x3U(1,j)=0;
end
[sum13,paixu13]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x5L(1,j)=0;  x5U(1,j)=0;
end
[sum15,paixu15]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x6L(1,j)=0;  x6U(1,j)=0;
end
[sum16,paixu16]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x7L(1,j)=0;  x7U(1,j)=0;
end
[sum17,paixu17]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x8L(1,j)=0;  x8U(1,j)=0;
end
[sum18,paixu18]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%% 方案2
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x1L(2,j)=0;  x1U(2,j)=0;
end
[sum21,paixu21]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x2L(2,j)=0;  x2U(2,j)=0;
end
[sum22,paixu22]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x7L(2,j)=0;  x7U(2,j)=0;
end
[sum27,paixu27]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案3  
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x1L(3,j)=0;  x1U(3,j)=0;
end
[sum31,paixu31]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x2L(3,j)=0;  x2U(3,j)=0;
end
[sum32,paixu32]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x3L(3,j)=0;  x3U(3,j)=0;
end
[sum33,paixu33]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x6L(3,j)=0;  x6U(3,j)=0;
end
[sum36,paixu36]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案4 
% %专家1
% x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
% for j=1:3
%     x1L(4,j)=0;  x1U(4,j)=0;
% end
% [sum41,paixu41]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x2L(4,j)=0;  x2U(4,j)=0;
end
[sum42,paixu42]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x3L(4,j)=0;  x3U(4,j)=0;
end
[sum43,paixu43]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x4L(4,j)=0;  x4U(4,j)=0;
end
[sum44,paixu44]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x5L(4,j)=0;  x5U(4,j)=0;
end
[sum45,paixu45]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x6L(4,j)=0;  x6U(4,j)=0;
end
[sum46,paixu46]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x7L(4,j)=0;  x7U(4,j)=0;
end
[sum47,paixu47]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x8L(4,j)=0;  x8U(4,j)=0;
end
[sum48,paixu48]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案5 
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x1L(5,j)=0;  x1U(5,j)=0;
end
[sum51,paixu51]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x2L(5,j)=0;  x2U(5,j)=0;
end
[sum52,paixu52]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x4L(5,j)=0;  x4U(5,j)=0;
end
[sum54,paixu54]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x5L(5,j)=0;  x5U(5,j)=0;
end
[sum55,paixu55]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家6
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x6L(5,j)=0;  x6U(5,j)=0;
end
[sum56,paixu56]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x7L(5,j)=0;  x7U(5,j)=0;
end
[sum57,paixu57]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案6 
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x3L(6,j)=0;  x3U(6,j)=0;
end
[sum63,paixu63]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x4L(6,j)=0;  x4U(6,j)=0;
end
[sum64,paixu64]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%% 方案7 
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x2L(7,j)=0;  x2U(7,j)=0;
end
[sum72,paixu72]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x3L(7,j)=0;  x3U(7,j)=0;
end
[sum73,paixu73]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x4L(7,j)=0;  x4U(7,j)=0;
end
[sum74,paixu74]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);
%专家7
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x7L(7,j)=0;  x7U(7,j)=0;
end
[sum77,paixu77]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);

%专家8
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);x6L=X(:,:,11);x6U=X(:,:,12);x7L=X(:,:,13);x7U=X(:,:,14);x8L=X(:,:,15);x8U=X(:,:,16);
for j=1:3
    x8L(7,j)=0;  x8U(7,j)=0;
end
[sum78,paixu78]=eight_ProsTheroyAndVarietyCommon(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U,x6L,x6U,x7L,x7U,x8L,x8U);


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
        disp(totalPaixu);
        totalPaixuTmp=totalPaixu;
for i=1:7
    for k=1:8
        if(totalPaixu(i,k)~=paixu&&totalPaixu(i,k)~=0)
            totalPaixuTmp(i,k)=-1;
        end
    end
end
 disp(totalPaixuTmp);
        disp(paixu);
% diff=zeros(1,7);
% diff(1)=(abs(sum11(1))+abs(sum12(1))+abs(sum13(1))+abs(sum15(1))+abs(sum16(1))+abs(sum17(1))+abs(sum18(1)))/7;
% diff(2)=(abs(sum21(2))+abs(sum22(2))+abs(sum27(2)))/3;
% diff(3)=(abs(sum31(3))+abs(sum32(3))+abs(sum33(3))+abs(sum36(3)))/4;
% diff(4)=(abs(sum41(4))+abs(sum42(4))+abs(sum43(4))+abs(sum44(4))+abs(sum45(4))+abs(sum46(4))+abs(sum47(4))+abs(sum48(4)))/8;
% diff(5)=(abs(sum51(5))+abs(sum52(5))+abs(sum54(5))+abs(sum55(5))+abs(sum56(5))+abs(sum57(5)))/6;
% diff(6)=(abs(sum63(6))+abs(sum64(6)))/2;
% diff(7)=(abs(sum72(7))+abs(sum73(7))+abs(sum74(7))+abs(sum77(7))+abs(sum78(7)))/5;
% disp('方案最终前景价值变化量diff');disp(diff);
% A=zeros(1,7);
% A(1)=diff(6);A(2)=diff(2);A(3)=diff(3);A(4)=diff(7);A(5)=diff(5);A(6)=diff(1);A(7)=diff(4);
% disp(A);
% plot(A,'-*');
