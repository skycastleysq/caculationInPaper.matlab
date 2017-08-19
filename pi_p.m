function [f_p]=pi_p(x)
a_p=0.55;
f_p=x^a_p/((x^a_p+(1-x)^a_p)^(1/a_p));
end

% %保守型
% afa=1.21;
% bta=1.21;
% a_p=0.55;
% a_n=0.49;

% %中立型
% afa=1.00;
% bta=1.00;
% a_p=0.58;
% a_n=0.58;