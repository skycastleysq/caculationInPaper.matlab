function [f_n]=pi_n(x)
a_n=0.49;
f_n=x^a_n/((x^a_n+(1-x)^a_n)^(1/a_n));
end
% %������
% afa=1.21;
% bta=1.21;
% a_p=0.55;
% a_n=0.49;

% %������
% afa=1.00;
% bta=1.00;
% a_p=0.58;
% a_n=0.58;