%% Simulate system to infer resilience properties
% Cf. Quad P 12, 16/01/24

%% Author
% Daniele Proverbio, 29/01/2024
% daniele.proverbio@unitn.it
% University of Trento


%% Prepare env
clear; close all; clc;

%% Initialize

N_Exp = 100;        % Repeated experiments (with different initial conditions)

time_start = 1;     % Start time of simulations 
N = 10000;          % 10000 Time points (for tau=100 to \infty)
dt = 0.01;          % Time step 
tic = 0;

val1 = 0.1;             % Basal expression (constant, within accepted range), normally = 0.1 ; otherwise = 0  
val2 = [1.84, 1.79, 1.575, 1.39];               % Max Production (control parameter)  (in bistable regime)
x_s = [1.14,1.44,1.48,1.40];            % Equilibrium point
gap = [0.47,0.39, 0.3, 0.2];

noise = 0.01 : 0.0007 : 0.1;             % Noise levels \sigma_\lambda (diffusion term)
n = [2, 3, 5, 8];
delta = 0.25;            % Fixed Distance
ar = 0.25;

deltas = 0.01 : 0.01 : 0.6;            % Variable Distance
noise_fix = 0.01;                      % Fixed noise

count = zeros(length(noise),length(n));
count1 = zeros(length(deltas),length(n));

sol = zeros((N*dt+1)/dt,1);


%% SDE simulator for noises
% Euler Maruyama scheme
for n_n = 1 : length(n)                            
    for noise_m = 1 : length(noise)  
        for exp_n = 1 : N_Exp
            x_in = x_s(n_n) - gap(n_n) + (val1+val2(n_n)+gap(n_n)-x_s(n_n))*rand(1);             % Initial conditions (on upper branch) .  (initial conditions: x_in = [x_s + delta, x_s - delta])
            tic = 0;   
            exceed = 0;

            for p = time_start-1+dt : dt : N*dt+1
                tic = tic + 1;          
                if tic == 1
                    sol(tic) = x_in;
                else
                    f = protein_production(p-dt,sol(tic-1),val1,val2(n_n),n(n_n));
                    sol(tic) = sol(tic-1) + f * dt + noise(noise_m)*sqrt(dt)*randn;
                end  

                %if sol(tic) > x_s(n_n) + delta || sol(tic) < x_s(n_n) - delta
                %    exceed = exceed +1;
                %end             
            end

            if sol(tic) > x_s(n_n) + delta || sol(tic) < x_s(n_n) - delta
                count(noise_m,n_n) = count(noise_m,n_n) + 1;
            end
        end
    end
end


save(fullfile('data/multiple_exps_tau_100.mat'),'count', '-v7.3')



%% SDE simulator for deltas
% Euler Maruyama scheme
for n_n = 1 : length(n)                            
    for de = 1 : length(deltas)  
        for exp_n = 1 : N_Exp
            x_in = x_s(n_n) - gap(n_n) + (val1+val2(n_n)+gap(n_n)-x_s(n_n))*rand(1);              % Initial conditions (on upper branch) .  (initial conditions: x_in = [x_s + delta, x_s - delta])
            tic = 0;   
            exceed = 0;

            for p = time_start-1+dt : dt : N*dt+1
                tic = tic + 1;          
                if tic == 1
                    sol(tic) = x_in;
                else
                    f = protein_production(p-dt,sol(tic-1),val1,val2(n_n),n(n_n));
                    sol(tic) = sol(tic-1) + f * dt + noise_fix*sqrt(dt)*randn;
                end  

                if sol(tic) > x_s(n_n) + deltas(de) || sol(tic) < x_s(n_n) - deltas(de)
                    exceed = exceed +1;
                end             
            end

            if exceed > 0
                count1(de,n_n) = count1(de,n_n) + 1;
            end
        end
    end
end


save(fullfile('data/multiple_exps_tau_100_deltas.mat'),'count1', '-v7.3')

%% Equation
% Simulate simple equation for autocatalytic protein production (deterministic part) (Sharma,
% 2015)

function dxdt = protein_production(t,x,val1,val2,n)

K = val1;    
c = val2;    

dxdt = K + (c*(x.^n))/(1+(x.^n)) - x;

end
