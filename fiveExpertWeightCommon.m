function [ out ] = fiveExpertWeightCommon( U,x,featureMatrixOfExpert )
%修正后的专家权重计算
%各专家对各方案的前景价值   与群体一致水平的差异最小化
%求解 专家权重和各方案最终前景价值
vfinal=zeros(1,7);
for i=1:7
    for j=1:5
        if(U(i,j)~=0)
            vfinal(i)=vfinal(i)+U(i,j)*x(j);
        end
    end
end
% vfinal是群体一致偏好
for i=1:7
    vfinal(i)= vfinal(i)/(x(1)*featureMatrixOfExpert(i,1)+x(2)*featureMatrixOfExpert(i,2)+x(3)*featureMatrixOfExpert(i,3)+x(4)*featureMatrixOfExpert(i,4)+x(5)*featureMatrixOfExpert(i,5));
end

% vfinal(1)=vfinal(1)/(x(1)+x(2)+x(3)+x(4)+x(5));
% vfinal(2)=vfinal(2)/(x(1)+x(2));
% vfinal(3)=vfinal(3)/(x(1)+x(2)+x(3));
% vfinal(4)=vfinal(4)/(x(1)+x(2)+x(3)+x(4)+x(5));
% vfinal(5)=vfinal(5)/(x(1)+x(2)+x(4)+x(5));
% vfinal(6)=vfinal(6)/(x(3)+x(4));
% vfinal(7)=vfinal(7)/(x(2)+x(3)+x(4));

%与群体一致偏好的距离
Ud=zeros(7,5);
for i=1:7
    for j=1:5
        if(U(i,j)~=0)
            Ud(i,j)=x(j)*(U(i,j)-vfinal(i))^2;
        end
    end
end

sum=zeros(1,7);
for i=1:7
  sum(i)=Ud(i,1)*featureMatrixOfExpert(i,1)+Ud(i,2)*  featureMatrixOfExpert(i,2)+Ud(i,3)*  featureMatrixOfExpert(i,3)+Ud(i,4)*  featureMatrixOfExpert(i,4)+Ud(i,5)*featureMatrixOfExpert(i,5);
end

% 
% sum(1)=Ud(1,1)+Ud(1,2)+Ud(1,3)+Ud(1,5);
% sum(2)=Ud(2,1)+Ud(2,2);
% sum(3)=Ud(3,1)+Ud(3,2)+Ud(3,3);
% sum(4)=Ud(4,1)+Ud(4,2)+Ud(4,3)+Ud(4,4)+Ud(4,5);
% sum(5)=Ud(5,1)+Ud(5,2)+Ud(5,4)+Ud(5,5);
% sum(6)=Ud(6,3)+Ud(6,4);
% sum(7)=Ud(7,2)+Ud(7,3)+Ud(7,4);
g=zeros(1,7);
for i=1:7
    g(i)=(x(1)*featureMatrixOfExpert(i,1)+x(2)*featureMatrixOfExpert(i,2)+x(3)*featureMatrixOfExpert(i,3)+x(4)*featureMatrixOfExpert(i,4)+x(5)*featureMatrixOfExpert(i,5));
end

G=[1/g(1),1/g(2),1/g(3),1/g(4),1/g(5),1/g(6),1/g(7);];
out=G*sum';
end



