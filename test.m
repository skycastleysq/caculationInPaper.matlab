clc;clearvars;
%a=10+25+15+30+20+45+10+40;
format long g;
%(24.3750-25)/24.3750
x0=[0.2;0.8];
A=[];
b=[];
Aeq=[1,1];
beq=1;
lb=[0;0];
ub=[];
[x1,fval1]=fmincon('-x(1)*x(2)',x0,A,b,Aeq,beq,lb,ub);
disp(x1);
disp(fval1);


x0=[0.2;0.3;0.5];
A=[];
b=[];
Aeq=[1,1,1];
beq=1;
lb=[0;0;0];
ub=[];
[x2,fval2]=fmincon('-x(1)*x(2)*x(3)',x0,A,b,Aeq,beq,lb,ub);
disp(x2);
x2(1)+x2(2)+x2(3)
disp(fval2);



x0=[0.2;0.3;0.5];
A=[];
b=[];
Aeq=[1,1,1];
beq=1;
lb=[0;0;0];
ub=[];
[x2,fval2]=fmincon('x(1)*(log(x(1)))',x0,A,b,Aeq,beq,lb,ub);
disp(x2);
disp(fval2);

a=[1,2,3];
x0=[0.2;0.3;0.5;];
A=[];
b=[];
Aeq=[1,1,1,];
beq=1;
lb=[0;0;0;];
ub=[];
disp('µÚÈý¸ö');
[x3,fval3]=fmincon('((8*x(1)-a(1))^2+(2*x(2)-1)^2+(10*x(3)-1)^2)',x0,A,b,Aeq,beq,lb,ub);
disp(x3);
disp(fval3);
disp(fval3);