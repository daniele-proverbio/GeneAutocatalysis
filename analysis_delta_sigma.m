%% Analysis and plotting for delta-sigma resilience

clear all; close all; clc;


%% ----- Gene regulation
% Load files to analyse
%tau20 = load(fullfile('data/multiple_exps_tau_20.mat'));                % For practical stability
tau100 = load(fullfile('data/multiple_exps_tau_100.mat'));
tau100_deltas = load(fullfile('data/multiple_exps_tau_100_deltas.mat'));

noise = 0.01 : 0.0007 : 0.1;             % Noise levels \sigma_\lambda (diffusion term)
n = [2, 3, 5, 8];
deltas = 0.01 : 0.01 : 0.6;            % Distance

%% Tau 100
figure()
imagesc(n,noise,1-tau100.count/200)
set(gca,'YDir','normal')
ax = gca;
ax.FontSize = 18; 
xlabel('$n$',fontsize=32,Interpreter='latex')
ylabel('$\lambda$',fontsize=32,Interpreter='latex')
title('$\bf{P}_\lambda$',Interpreter='latex')
colorbar


%% Deltas
figure()
imagesc(n,deltas,1-tau100_deltas.count1/200)
set(gca,'YDir','normal')
ax = gca;
ax.FontSize = 18; 
xlabel('$n$',fontsize=32,Interpreter='latex')
ylabel('$\delta$',fontsize=32,Interpreter='latex')
title('$\bf{P}_\lambda$',Interpreter='latex')
colorbar