function [d]= getdis(a_L,a_U,b_L,b_U)
%distance   计算两个区间数的距离
%a_L，b_L   下标
%a_U，b_U   上标
%Author     袁胜强
%Datetime   2016.7.10
d=sqrt(((a_L-b_L)^2+(a_U-b_U)^2)/2);
end
