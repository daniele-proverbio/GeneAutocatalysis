%% Look for stability and phase portrait
% The code below follows the usual steps for linear stability

%% Author
% Daniele Proverbio, 20/08/2019
% daniele.proverbio@outlook.com
% University of Luxembourg

%% Prepare env
clear; close all; clc;

%% Perform calculation

syms x            % Working with symbolic manipulation (more precise)
K = 0.1;          % Basal expression (constant, within accepted range)
c = 1:0.5:250;     % Max Production (control parameter)   % for n=2, 1:0.01:15    % for n=3, 1:0.01:15  % for n=5, 190:0.1:200

solutions=[];   % Vector of equilibria solutions
c_vector=[];    % Vector of accepted control parameters
cmap = [];      % Vector of colors

enne = 8;

for m = 1:length(c)     % Check all c
    
    f = K + (c(m)*(x^enne))/(1+(x^enne)) - x;     % My equation (vector field)
    soly = vpasolve(f == 0, x);         % Look for roots
    f_prime = diff(f);                  % Estimate derivatives
    
    for n = 1:length(soly)
        if isreal(soly(n))              % Only real roots allowed, obviously
            solutions = [solutions,soly(n)];
            c_vector = [c_vector,c(m)];
            if(vpa(subs(f_prime,x,soly(n))) < 0 )   % Check for linear stability -> eigenvalue <> 0
                cmap = [cmap; [0,0.9,1]];             % If Stable point, color it in blue
            else
                cmap = [cmap; [1,0.9,0]];             % If unstable, color it in red
                                                    % Color shades are
                                                    % changed according to
                                                    % n ([. , 0 -> 0.6 , .])
            end
        end
    end
end

%% plot
figure;
scatter(c_vector,solutions,3,cmap,'filled');

ax = gca;
ax.FontSize = 18; 
set(gca,'XMinorTick','on','YMinorTick','on')
%title('Equilibria of the system','FontSize',15);
xlabel('c','FontSize',30);
ylabel('$\mathbf{\tilde{x}}$','FontSize',30,'interpreter','latex');
%saveas(gcf,'equilibria.eps');



%% Plot function

x = 0:0.0005:3;
n1 = 4;
n2 = 7;
r = 0.1;

a1 = 1;
a2 = 1.6;
a2prime = 1.4;
a3 = 2;

n1= 4;
n2= 7;

figure
hold on
plot(x, r + a1*(x.^n1)./(1 + x.^n1) - x, linewidth = 1.5, color = [0 0.4470 0.7410]);
plot(x, r + a2*(x.^n1)./(1 + x.^n1) - x, linewidth = 1.5, color = [0.8500 0.3250 0.0980]);
plot(x, r + a3*(x.^n1)./(1 + x.^n1) - x, linewidth = 1.5, color = [0.9290 0.6940 0.1250]) ;

plot(x, r + a1*(x.^n2)./(1 + x.^n2) - x, '--', linewidth = 1.5, color = [0 0.4470 0.7410]);
plot(x, r + a2prime*(x.^n2)./(1 + x.^n2) - x, '--', linewidth = 1.5, color = [0.8500 0.3250 0.0980]);
plot(x, r + a3*(x.^n2)./(1 + x.^n2) - x, '--', linewidth = 1.5, color = [0.9290 0.6940 0.1250]) ;

plot(xlim, [0 0], '-', color='black')                 % Horizontal Line at y=0

xlabel('$x$',fontsize=16, interpreter='latex')
ylabel('$f(x)$',fontsize=16, interpreter='latex')

legend({'a = 1', 'a = a_{c,1}', 'a = 2'}, fontsize = 12, Location='southwest')

hold off