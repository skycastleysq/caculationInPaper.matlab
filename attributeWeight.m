function [ out ] = attributeWeight( vp,vn,x )
%最大化前景值
out=-(pi_p(x(1))*vp(1)+pi_p(x(2))*vp(2)+pi_p(x(3))*vp(3)+pi_n(x(1))*vn(1)+pi_p(x(2))*vn(2)+pi_p(x(3))*vn(3));
end

