function f=nodalf(p,u) % nonlinearity for cGL 
par=u(p.nu+1:end); up=u(1:p.nu); % params, and u on periodic domain 
mu=par(1);
x1=up(1);
x2=up(2);

% \dot{x}_1=-x1^3+x2;
% \dot{x}_2=-(1+mu^2)*x1+2*mu*x2-mu*x1^3+2*(x2-mu*x1)^3;
f(1,1)=-x1^3+x2;
f(2,1)=-(1+mu^2)*x1+2*mu*x2-mu*x1^3+2*(x2-mu*x1)^3;
% 
% f(1,1)=x2;
% f(2,1)=mu*(x1+x2)-x2-x1^3+3*x1^2*x2;

f=-f;
