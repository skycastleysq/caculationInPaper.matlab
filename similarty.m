function [ similarty ] = similarty( al,au,bl,bu)
%�����������������ƶ� ��6�����
%   cut  a,b�ཻ����
%   dlab a>b�����
%   drab a>b���ұ�
%   dlba b>a�����
%   dRba b>a���ұ�
if(au<=bl||bu<=al)
    similarty=0;
end
if(al<=bl&&bl<=au&&au<=bu)
    similarty=(au-bl)/(bu-al);
end
if(bl<=al&&au<=bu)
    similarty=(au-al)/(bu-bl);
end
if(al<=bl&&bu<=au)
    similarty=(bu-bl)/(au-al);
end
if(bl<=al&&al<=bu&&bu<=au)
    similarty=(bu-al)/(au-bl);
end
end

