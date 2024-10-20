function Gu=sGjac(p,u)  % PDE Jacobian for AC with pBC 
par=u(p.nu+1:end); up=u(1:p.nu); % params, and u on periodic domain 

%get parameter mu and state variable x1 and x2. 
mu=par(1);
x1=up(1);
x2=up(2);

% Jacobian matrix of the nonlinear system
% \dot{x}_1=-x1^3+x2;
% \dot{x}_2=-(1+mu^2)*x1+2*mu*x2-mu*x1^3+2*(x2-mu*x1)^3;
Gu(1,1)=-3*x1^2;
Gu(1,2)=1;
Gu(2,1)=-(1+mu^2)-3*mu*x1^2+6*(x2-mu*x1)^2*(-mu);
Gu(2,2)=2*mu+6*(x2-mu*x1)^2;
% 
% Gu(1,1)=0;
% Gu(1,2)=1;
% Gu(2,1)=mu-3*x1^2+6*x1*x2;
% Gu(2,2)=mu-1+3*x1^2;


Gu=-Gu; %reverse the sign due to pde2path convention