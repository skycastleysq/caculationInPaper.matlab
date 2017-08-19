function [ similarty ] = similarty( al,au,bl,bu)
%求两个区间数的相似度 分6种情况
%   cut  a,b相交部分
%   dlab a>b的左边
%   drab a>b的右边
%   dlba b>a的左边
%   dRba b>a的右边
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

