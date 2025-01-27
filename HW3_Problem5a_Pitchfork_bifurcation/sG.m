function r=sG(p,u)  % AC with periodic BC 
par=u(p.nu+1:end); up=u(1:p.nu); % params, and u on periodic domain 

%get parameter mu and state variable x1 and x2. 
mu=par(1);
x1=up(1);
x2=up(2);

% Right hand side of 
% \dot{x}_1=mu*x1-x1^3
% \dot{x}_2=-x2
r(1,1)=mu*x1-x1^3;
r(2,1)=-x2;

r=-r; %reverse the sign due to pde2path convention