function [d]= getdis(a_L,a_U,b_L,b_U)
%distance   ���������������ľ���
%a_L��b_L   �±�
%a_U��b_U   �ϱ�
%Author     Ԭʤǿ
%Datetime   2016.7.10
d=sqrt(((a_L-b_L)^2+(a_U-b_U)^2)/2);
end
