clc;clearvars;
% a为没改的；b为改了的
aL=[0.70,0.60,0.70,0.70,0.70,0.65];
aU=[0.80,0.70,0.85,0.80,0.80,0.75];
aAva=0;
for i=1:6
aAva=aAva+aL(i)+aU(i);
end
aAva=aAva/12;
disp('aAva');disp(aAva);
cL=zeros(1,6);cU=zeros(1,6);
for i=1:6
    cL(i)=(aL(i)-aAva)/aAva;
    cU(i)=(aU(i)-aAva)/aAva;
end
disp('cL');disp(cL);disp('cU');disp(cU);
arL=zeros(1,6);arU=zeros(1,6);
for i=1:6
arL(i)=(cL(i))/max([abs(cL(1)),abs(cL(2)),abs(cL(3)),abs(cL(4)),abs(cL(5)),abs(cL(6))]);
arU(i)=(cU(i))/max([abs(cL(1)),abs(cL(2)),abs(cL(3)),abs(cL(4)),abs(cL(5)),abs(cL(6))]);
end
disp('arL');disp(arL);disp('arU');disp(arU);


bL=[0.70,0.60,0.70,0.70,0.717,0.65];
bU=[0.80,0.70,0.85,0.80,0.817,0.75];
bAva=0;
for i=1:6
bAva=bAva+bL(i)+bU(i);
end
bAva=bAva/12;
disp('bAva');disp(bAva);
dL=zeros(1,6);dU=zeros(1,6);
for i=1:6
    dL(i)=(bL(i)-bAva)/bAva;
    dU(i)=(bU(i)-bAva)/bAva;
end
disp('dL');disp(dL);disp('dU');disp(dU);
brL=zeros(1,6);brU=zeros(1,6);
for i=1:6
brL(i)=(dL(i))/max([abs(dL(1)),abs(dL(2)),abs(dL(3)),abs(dL(4)),abs(dL(5)),abs(dL(6))]);
brU(i)=(dU(i))/max([abs(dL(1)),abs(dL(2)),abs(dL(3)),abs(dL(4)),abs(dL(5)),abs(dL(6))]);
end
disp('brL');disp(brL);disp('brU');disp(brU);