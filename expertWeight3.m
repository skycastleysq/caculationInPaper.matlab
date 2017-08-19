function [ out ] = expertWeight3( U,x )
%�������ר��Ȩ�ؼ���
%��ר�ҶԸ�������ǰ����ֵ   ��Ⱥ��һ��ˮƽ�Ĳ�����С��
%��� ר��Ȩ�غ͸���������ǰ����ֵ
vfinal=zeros(1,7);
for i=1:7
    for j=1:4
        if(U(i,j)~=0)
            vfinal(i)=vfinal(i)+U(i,j)*x(j);
        end
    end
end
% vfinal��Ⱥ��һ��ƫ��
vfinal(1)=vfinal(1)/(x(1)+x(2)+x(3));
vfinal(2)=vfinal(2)/(x(1)+x(2));
vfinal(3)=vfinal(3)/(x(1)+x(2)+x(3));
vfinal(4)=vfinal(4)/(x(1)+x(2)+x(3)+x(4));
vfinal(5)=vfinal(5)/(x(1)+x(2)+x(4));
vfinal(6)=vfinal(6)/(x(3)+x(4));
vfinal(7)=vfinal(7)/(x(2)+x(3)+x(4));
%��Ⱥ��һ��ƫ�õľ���
Ud=zeros(7,4);
for i=1:7
    for j=1:4
        if(U(i,j)~=0)
            Ud(i,j)=x(j)*(U(i,j)-vfinal(i))^2;
        end
    end
end
sum=zeros(1,7);
sum(1)=Ud(1,1)+Ud(1,2)+Ud(1,3);
sum(2)=Ud(2,1)+Ud(2,2);
sum(3)=Ud(3,1)+Ud(3,2)+Ud(3,3);
sum(4)=Ud(4,1)+Ud(4,2)+Ud(4,3)+Ud(4,4);
sum(5)=Ud(5,1)+Ud(5,2)+Ud(5,4);
sum(6)=Ud(6,3)+Ud(6,4);
sum(7)=Ud(7,2)+Ud(7,3)+Ud(7,4);

G=[1/(x(1)+x(2)+x(3)),1/(x(1)+x(2)),1/(x(1)+x(2)+x(3)),1/(x(1)+x(2)+x(3)+x(4)),1/(x(1)+x(2)+x(4)),1/(x(3)+x(4)),1/(x(2)+x(3)+x(4));];
out=sum*G';
end