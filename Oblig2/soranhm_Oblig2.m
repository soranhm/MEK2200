a = 1; b = 2; c = 3;
N = 100; L = 1; my = 1;
h = L/(N-1);

% NUMERISK
% lager matrisen A
A = zeros(N,N);
A(1,1) = a ; 
A(N,N) = L;

for i = 2:N-1
    A(i,i) = -2;
    A(i,i-1) = 1;
    A(i,i+1) = 1;
end

% lager B matrisen
B = zeros(N,1);
B(1,1) = b ; 
B(N,1) = a ;

for j = 2:N-1
    B(j,1) = (c*h^2)/my;
end

u = A\B ;

y = linspace(1,0,N);
plot(u,y,'b') % plotter numeriske som bl?


% ANALYTISK
u2 = 0.5 * (c*y.^2)/my + y.*(b/L - c/(2*my) - a/L) + a;
hold on
plot(u2,y,'r') % plotter analytiske som r?d
legend('NUMERISK','ANALYTISK','Location','northwest')

% Oppgave 3e

numerisk = interp1(y,u,L/sqrt(2))
analytisk = interp1(y,u2,L/sqrt(2))



