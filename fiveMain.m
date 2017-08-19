clearvars;
clc;
% 有无完美
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
% 
% x1L=[10,400 ,0.40;20,400 ,0.42;15,600 ,0.30;0,0 ,0      ;10,800 ,0.35;0 ,  0 ,   0;0 ,0   ,   0;];
% x1U=[45,1500,0.85;35,1600,0.80;40,1500,0.75;0,0,0       ;40,1400,0.70;0 ,  0 ,   0;0 ,0   ,   0;];
% x2L=[18,600 ,0.45;20,650 ,0.35;25,450 ,0.30;20,300 ,0.40;15,400 ,0.35;0 ,  0 ,   0;25,600 ,0.35;];
% x2U=[35,1800,0.80;40,1700,0.85;35,1500,0.80;45,1600,0.78;40,1400,0.75;0 ,  0 ,   0;40,1800,0.85;];
% x3L=[15,600 ,0.35;0 ,  0 ,   0;15,600 ,0.35;20,500 ,0.40;0 ,  0 ,   0;20,450 ,0.45;15,400 ,0.40;];
% x3U=[35,1500,0.75;0 ,  0 ,   0;40,1300,0.80;30,1800,0.73;0 ,  0 ,   0;38,1600,0.80;35,1700,0.85;];
% x4L=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;25,500 ,0.40;15,400 ,0.45;15,500 ,0.35;20,600 ,0.35;];
% x4U=[0 ,  0 ,   0;0 ,  0 ,   0;0 ,  0 ,   0;45,1400,0.75;30,1700,0.70;35,1600,0.80;40,1500,0.78;];
% x5L=[21,450 ,0.35;0 ,  0 ,   0;0 ,  0 ,   0;20,500 ,0.30;25,600 ,0.40;0 ,   0,   0; 0,   0,   0;];
% x5U=[35,1700,0.75;0 ,  0 ,   0;0 ,  0 ,   0;45,1500,0.75;40,1600,0.70;0 ,   0,   0; 0,   0,   0;];


Max=0.85;deta=-Max*0.04;
X=cat(3,x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);
[sum,paixu]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%% 方案1
%专家1
disp('****************方案1 专家1***************************************************************************');
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x1L(1,3)=x1L(1,3)+deta;x1U(1,3)=x1U(1,3)+deta;
[sum11,paixu11]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家2

x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x2L(1,3)=x2L(1,3)+deta;x2U(1,3)=x2U(1,3)+deta;
[sum12,paixu12]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x3L(1,3)=x3L(1,3)+deta;x3U(1,3)=x3U(1,3)+deta;
[sum13,paixu13]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x5L(1,3)=x5L(1,3)+deta;x5U(1,3)=x5U(1,3)+deta;
[sum15,paixu15]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%% 方案2
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x1L(2,3)=x1L(2,3)+deta;x1U(2,3)=x1U(2,3)+deta;
[sum21,paixu21]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x2L(2,3)=x2L(2,3)+deta;x2U(2,3)=x2U(2,3)+deta;
[sum22,paixu22]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%% 方案3  
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x1L(3,3)=x1L(3,3)+deta;x1U(3,3)=x1U(3,3)+deta;
[sum31,paixu31]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x2L(3,3)=x2L(3,3)+deta;x2U(3,3)=x2U(3,3)+deta;
[sum32,paixu32]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x3L(3,3)=x3L(3,3)+deta;x3U(3,3)=x3U(3,3)+deta;
[sum33,paixu33]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%% 方案4 
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x1L(4,3)=x1L(4,3)+deta;x1U(4,3)=x1U(4,3)+deta;
[sum41,paixu41]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x2L(4,3)=x2L(4,3)+deta;x2U(4,3)=x2U(4,3)+deta;
[sum42,paixu42]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x3L(4,3)=x3L(4,3)+deta;x3U(4,3)=x3U(4,3)+deta;
[sum43,paixu43]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x4L(4,3)=x4L(4,3)+deta;x4U(4,3)=x4U(4,3)+deta;
[sum44,paixu44]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x5L(4,3)=x5L(4,3)+deta;x5U(4,3)=x5U(4,3)+deta;
[sum45,paixu45]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%% 方案5 
%专家1
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x1L(5,3)=x1L(5,3)+deta;x1U(5,3)=x1U(5,3)+deta;
[sum51,paixu51]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x2L(5,3)=x2L(5,3)+deta;x2U(5,3)=x2U(5,3)+deta;
[sum52,paixu52]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x4L(5,3)=x4L(5,3)+deta;x4U(5,3)=x4U(5,3)+deta;
[sum54,paixu54]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家5
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x5L(5,3)=x5L(5,3)+deta;x5U(5,3)=x5U(5,3)+deta;
[sum55,paixu55]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%% 方案6 
%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x3L(6,3)=x3L(6,3)+deta;x3U(6,3)=x3U(6,3)+deta;
[sum63,paixu63]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x4L(6,3)=x4L(6,3)+deta;x4U(6,3)=x4U(6,3)+deta;
[sum64,paixu64]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%% 方案7 
%专家2
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x2L(7,3)=x2L(7,3)+deta;x2U(7,3)=x2U(7,3)+deta;
[sum72,paixu72]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家3
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x3L(7,3)=x3L(7,3)+deta;x3U(7,3)=x3U(7,3)+deta;
[sum73,paixu73]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);

%专家4
x1L=X(:,:,1);x1U=X(:,:,2);x2L=X(:,:,3);x2U=X(:,:,4);x3L=X(:,:,5);x3U=X(:,:,6);x4L=X(:,:,7);x4U=X(:,:,8);x5L=X(:,:,9);x5U=X(:,:,10);
x4L(7,3)=x4L(7,3)+deta;x4U(7,3)=x4U(7,3)+deta;
[sum74,paixu74]=five_ProsTheroyAndVariety(x1L,x1U,x2L,x2U,x3L,x3U,x4L,x4U,x5L,x5U);


flag=1;
if(flag==1)
% 方案7
    for i=1:7
        sum72(i)=(sum72(i)-sum(i))/sum(i);
    end
    for i=1:7
        sum73(i)=(sum73(i)-sum(i))/sum(i);
    end
    for i=1:7
        sum74(i)=(sum74(i)-sum(i))/sum(i);
    end
% 方案6  
   for i=1:7
        sum63(i)=(sum63(i)-sum(i))/sum(i);
    end
    for i=1:7
        sum64(i)=(sum64(i)-sum(i))/sum(i);
    end
% 方案5    
   for i=1:7
        sum51(i)=(sum51(i)-sum(i))/sum(i);
    end
    for i=1:7
        sum52(i)=(sum52(i)-sum(i))/sum(i);
    end
    for i=1:7
        sum54(i)=(sum54(i)-sum(i))/sum(i);
    end
    for i=1:7
        sum55(i)=(sum55(i)-sum(i))/sum(i);
    end
% 方案4 
    for i=1:7
        sum45(i)=(sum45(i)-sum(i));
    end
    for i=1:7
        sum44(i)=(sum44(i)-sum(i));
    end
    for i=1:7
        sum43(i)=(sum43(i)-sum(i));
    end
    for i=1:7
        sum42(i)=(sum42(i)-sum(i));
    end
    for i=1:7
        sum41(i)=(sum41(i)-sum(i));
    end
% 方案3    
    for i=1:7
        sum33(i)=(sum33(i)-sum(i));
    end
    for i=1:7
        sum32(i)=(sum32(i)-sum(i));
    end
    for i=1:7
        sum31(i)=(sum31(i)-sum(i));
    end    
 % 方案2
    for i=1:7
        sum22(i)=(sum22(i)-sum(i));
    end    
    for i=1:7
        sum21(i)=(sum21(i)-sum(i));
    end
% 方案1
    for i=1:7
        sum15(i)=(sum13(i)-sum(i));
    end
    for i=1:7
        sum13(i)=(sum13(i)-sum(i));
    end
    for i=1:7
        sum12(i)=(sum12(i)-sum(i));
    end
    for i=1:7
        sum11(i)=(sum11(i)-sum(i));
    end
end
% a=1:7;
% scheme0=[sum,paixu;];
% scheme1=[sum11,paixu11;sum12,paixu12;sum13,paixu13;sum15,paixu15;];
% scheme2=[sum21,paixu21;sum22,paixu22;];
% scheme3=[sum31,paixu31;sum32,paixu32;sum33,paixu33;];
% scheme4=[sum41,paixu41;sum42,paixu42;sum43,paixu43;sum44,paixu44;sum45,paixu45;];
% scheme5=[sum51,paixu51;sum52,paixu52;sum54,paixu54;sum55,paixu55;];
% scheme6=[sum63,paixu63;sum64,paixu64;];
% scheme7=[sum72,paixu72;sum73,paixu73;sum74,paixu74;];
% //scheme=[a,linspace(1,1,7);scheme1;a,linspace(2,2,7);scheme2;a,linspace(3,3,7);scheme3;a,linspace(4,4,7);scheme4;a,linspace(5,5,7);scheme5;a,linspace(6,6,7);scheme6;a,linspace(7,7,7);scheme7];
% disp(scheme);

totalPaixu=[paixu11,paixu12,paixu13,0      ,paixu15;
            paixu21,paixu22,0      ,0      ,0      ;
            paixu31,paixu32,paixu33,0      ,0      ;
            paixu41 ,paixu42,paixu43,paixu44,paixu15;
            paixu51,paixu52,0      ,paixu54,paixu55;
            0      ,0      ,paixu63,paixu64,0      ;
            0      ,paixu72,paixu73,paixu74,0      ;];
        disp(totalPaixu);
        totalPaixuTmp=totalPaixu;
for i=1:7
    for k=1:5
        if(totalPaixu(i,k)~=paixu&&totalPaixu(i,k)~=0)
            totalPaixuTmp(i,k)=-1;
        end
    end
end
 disp(totalPaixuTmp);
        disp(paixu);
        
        





% VARIETY=[sum11(1),sum12(1),sum13(1),0,sum15(1);
%          sum21(2),sum22(2),0       ,0, 0      ;
%          sum31(3),sum32(3),sum33(3),0,0;
%          sum41(4),sum42(4),sum43(4),sum44(4),sum45(4);
%          sum51(5),sum52(5),0,sum54(5),sum55(5);
%          0,0,sum63(6),sum64(6),0;
%          0,sum72(7),sum73(7),sum74(7),0;];
%      disp('VARIETY');disp(VARIETY);
%     


% diff=zeros(1,7);
% diff(1)=(abs(sum11(1))+abs(sum12(1))+abs(sum13(1))+abs(sum15(1)))/4;
% diff(2)=(abs(sum21(2))+abs(sum22(2)))/2;
% diff(3)=(abs(sum31(3))+abs(sum32(3))+abs(sum33(3)))/3;
% diff(4)=(abs(sum41(4))+abs(sum42(4))+abs(sum43(4))+abs(sum44(4))+abs(sum45(4)))/5;
% diff(5)=(abs(sum51(5))+abs(sum52(5))+abs(sum54(5))+abs(sum55(5)))/4;
% diff(6)=(abs(sum63(6))+abs(sum64(6)))/2;
% diff(7)=(abs(sum72(7))+abs(sum73(7))+abs(sum74(7)))/3;
% disp('方案最终前景价值变化量diff');disp(diff);
% a2=(diff(2)+diff(6))/2;
% a3=(diff(3)+diff(7))/2;
% a4=(diff(1)+diff(5))/2;
% a5=diff(4);
% A=[a2,a3,a4,a5];
% 
% disp('a2');disp(a2);disp('a3');disp(a3);disp('a4');disp(a4);disp('a5');disp(a5);

