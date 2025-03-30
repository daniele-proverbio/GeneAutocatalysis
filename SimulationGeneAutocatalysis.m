clc
clear all
close all

n = 4;
a = 4;
r = 0.1; %1/(3*sqrt(3))

step = 0.01;

horizon = 100;

x0= 2;

%% FIGURE 1
% figure
% x=[0:step:4];
% n=4;
% a=1.5;
% linewid=1.5;
% plot(x,a*x.^n./(1+x.^n),'LineWidth',linewid);
% hold on
% r=0.1;
% plot(x,x-r,'LineWidth',linewid);
% r=0.186;
% plot(x,x-r,'LineWidth',linewid);
% r=0.35;
% plot(x,x-r,'LineWidth',linewid);
% r=0.428;
% plot(x,x-r,'LineWidth',linewid);
% r=0.6;
% plot(x,x-r,'LineWidth',linewid);
% xlim([0 3])
% ylim([-0.1 1.5])
% xlabel('x')
% ylabel('f_1(x), f_2(x)')
% legend({'f_1','r=0.1','r=0.186','r=0.35','r=0.428','r=0.6'},'Location','southeast','NumColumns',2)
% fontsize(15,"points")
% 
% mysize = [20 12];
% set(gcf, 'PaperUnits', 'centimeters');
% set(gcf, 'PaperPosition', [0 0 mysize]);
% set(gcf, 'PaperSize', [mysize]); % dimension on x axis and y axis resp.
% print(gcf,'-dpdf', ['GeneAutocatalysis.pdf'])

%% FIGURE 2
% figure
% box on
% x=[0:step:4];
% n=4;
% r=0.1;
% linewid=1.5;
% hold on
% a=600;
% plot(x,a*x.^n./(1+x.^n),'LineWidth',linewid);
% a=105.5;
% plot(x,a*x.^n./(1+x.^n),'LineWidth',linewid);
% a=3;
% plot(x,a*x.^n./(1+x.^n),'LineWidth',linewid);
% a=1.6;
% plot(x,a*x.^n./(1+x.^n),'LineWidth',linewid);
% a=1;
% plot(x,a*x.^n./(1+x.^n),'LineWidth',linewid);
% plot(x,x-r,'LineWidth',linewid);
% xlim([0 3.5])
% ylim([-0.1 8])
% xlabel('x')
% ylabel('f_1(x), f_2(x)')
% legend({'a=600','a=105.5','a=3','a=1.6','a=1','f_2'},'Location','northeast','NumColumns',1)
% fontsize(15,"points")
% % inset
% axes('Position',[.32 .5 .35 .4])
% box on
% x=[0:step/2:0.2];
% hold on
% a=600;
% plot(x,a*x.^n./(1+x.^n),'LineWidth',linewid);
% a=105.5;
% plot(x,a*x.^n./(1+x.^n),'LineWidth',linewid);
% a=3;
% plot(x,a*x.^n./(1+x.^n),'LineWidth',linewid);
% a=1.6;
% plot(x,a*x.^n./(1+x.^n),'LineWidth',linewid);
% a=1;
% plot(x,a*x.^n./(1+x.^n),'LineWidth',linewid);
% plot(x,x-r,'LineWidth',linewid);
% ylim([-0.01 0.08])
% xlabel('x')
% ylabel('f_1(x), f_2(x)')
% 
% mysize = [20 12];
% set(gcf, 'PaperUnits', 'centimeters');
% set(gcf, 'PaperPosition', [0 0 mysize]);
% set(gcf, 'PaperSize', [mysize]); % dimension on x axis and y axis resp.
% print(gcf,'-dpdf', ['GeneAutocatalysis_2.pdf'])

%% FIGURE 3
% figure
% box on
% n=4;
% r=0.1;
% linewid=1.5;
% hold on
% a=1;
% plot(x,a*x.^n./(1+x.^n)-x+r,'LineWidth',linewid);
% a=1.6195;
% plot(x,a*x.^n./(1+x.^n)-x+r,'LineWidth',linewid);
% a=3;
% plot(x,a*x.^n./(1+x.^n)-x+r,'LineWidth',linewid);
% n=7;
% a=1;
% plot(x,a*x.^n./(1+x.^n)-x+r,'--','color',[0 0.4470 0.7410],'LineWidth',linewid);
% a=1.389;
% plot(x,a*x.^n./(1+x.^n)-x+r,'--','color',[0.8500 0.3250 0.0980],'LineWidth',linewid);
% a=3;
% plot(x,a*x.^n./(1+x.^n)-x+r,'--','color',[0.9290 0.6940 0.1250],'LineWidth',linewid);
% yline(0);
% xlim([0 3.5])
% xlabel('x')
% ylabel('f(x)')
% legend({'a=1','a=a_{c,1}','a=3'},'Location','southwest')
% fontsize(15,"points")
% 
% mysize = [20 12];
% set(gcf, 'PaperUnits', 'centimeters');
% set(gcf, 'PaperPosition', [0 0 mysize]);
% set(gcf, 'PaperSize', [mysize]); % dimension on x axis and y axis resp.
% print(gcf,'-dpdf', ['GeneAutocatalysis_3.pdf'])

%% FIGURE 4
% figure
% box on
% n=4;
% r=0.1;
% linewid=1.5;
% fontsize(13,"points")
% x=[0:step:120];
% t = tiledlayout(1,2,'TileSpacing','compact');
% bgAx = axes(t,'XTick',[],'YTick',[]);
% bgAx.Layout.TileSpan = [1 2];
% % first part
% ax1 = axes(t);
% hold on
% a=95;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.4660 0.6740 0.1880],'LineWidth',linewid);
% a=105.5;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.3010 0.7450 0.9330],'LineWidth',linewid);
% a=118;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.6350 0.0780 0.1840],'LineWidth',linewid);
% yline(0);
% xline(ax1,10,':');
% ax1.Box = 'off';
% xlim(ax1,[0 10])
% ylim(ax1,[-5 120])
% legend({'a=95','a=a_{c,2}','a=118'},'Location','best')
% % second part
% ax2 = axes(t);
% ax2.Layout.Tile = 2;
% hold on
% a=95;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.4660 0.6740 0.1880],'LineWidth',linewid);
% a=105.5;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.3010 0.7450 0.9330],'LineWidth',linewid);
% a=118;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.6350 0.0780 0.1840],'LineWidth',linewid);
% yline(0);
% xline(ax2,80,':');
% ax2.YAxis.Visible = 'off';
% ax2.Box = 'off';
% xlim(ax2,[80 120])
% ylim(ax2,[-5 105])
% % Link the axes
% linkaxes([ax1 ax2], 'y')
% fontsize(13,"points")
% xlabel(t,'x')
% ylabel(t,'f(x)')
% fontsize(15,"points")
% % inset
% axes('Position',[.6 .45 .35 .5])
% box on
% x=[0:step/2:0.2];
% hold on
% a=95;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.4660 0.6740 0.1880],'LineWidth',linewid);
% a=105.5;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.3010 0.7450 0.9330],'LineWidth',linewid);
% a=118;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.6350 0.0780 0.1840],'LineWidth',linewid);
% yline(0);
% ylim([-0.01 0.12])
% xlabel('x')
% ylabel('f(x)')
% 
% mysize = [17 12];
% set(gcf, 'PaperUnits', 'centimeters');
% set(gcf, 'PaperPosition', [0 0 mysize]);
% set(gcf, 'PaperSize', [mysize]); % dimension on x axis and y axis resp.
% print(gcf,'-dpdf', ['GeneAutocatalysis_4.pdf'])

%%%%%%%%%%%%%%%%%%
%
% figure
% plot(x,a*x.^n./(1+x.^n),'r');
% hold on
% a=3;
% plot(x,a*x.^n./(1+x.^n),'g');
% a=4;
% plot(x,a*x.^n./(1+x.^n),'m');
% a=5;
% plot(x,a*x.^n./(1+x.^n),'c');
% a=10;
% plot(x,a*x.^n./(1+x.^n),'k');
% xline(1)
% 
% figure
% plot(x,a*x.^n./(1+x.^n),'r');
% hold on
% plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2,'g');
% plot(x,-(a*n*x.^n.*(n*x.^n - n + x.^n + 1))./(x.^2.*(x.^n + 1).^3),'m');
% plot(x,x-r,'b');
% xline(1)
% 
% figure
% a=2;
% plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2,'r');
% hold on
% a=3;
% plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2,'g');
% a=4;
% plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2,'m');
% a=5;
% plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2,'c');
% a=100;
% plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2,'k');
% %n=20;
% %plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2);
% %n=100;
% %plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2);
% yline(1)
% 
% figure
% n=2;
% plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2,'r');
% hold on
% n=3;
% plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2,'g');
% n=4;
% plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2,'m');
% n=5;
% plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2,'c');
% n=8;
% plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2,'k');
% %n=20;
% %plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2);
% %n=100;
% %plot(x,(a*n*x.^(n-1))./(x.^n + 1).^2);
% yline(1)
%
% figure
% n=4;
% r=0.1;
% linewid=1.5;
% x=[0:step:110];
% t = tiledlayout(1,2,'TileSpacing','compact');
% bgAx = axes(t,'XTick',[],'YTick',[]);
% bgAx.Layout.TileSpan = [1 2];
% % first part
% ax1 = axes(t);
% hold on
% a=95;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.4660 0.6740 0.1880],'LineWidth',linewid);
% a=105.5;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.3010 0.7450 0.9330],'LineWidth',linewid);
% a=108;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.6350 0.0780 0.1840],'LineWidth',linewid);
% yline(0);
% xline(ax1,10,':');
% ax1.Box = 'off';
% xlim(ax1,[0 10])
% % second part
% ax2 = axes(t);
% ax2.Layout.Tile = 2;
% hold on
% a=95;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.4660 0.6740 0.1880],'LineWidth',linewid);
% a=105.5;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.3010 0.7450 0.9330],'LineWidth',linewid);
% a=118;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.6350 0.0780 0.1840],'LineWidth',linewid);
% yline(0);
% xline(ax2,90,':');
% ax2.YAxis.Visible = 'off';
% ax2.Box = 'off';
% xlim(ax2,[90 110])
% % Link the axes
% linkaxes([ax1 ax2], 'y')
% fontsize(13,"points")
% xlabel(t,'x')
% ylabel(t,'f(x)')
% 
% mysize = [20 12];
% set(gcf, 'PaperUnits', 'centimeters');
% set(gcf, 'PaperPosition', [0 0 mysize]);
% set(gcf, 'PaperSize', [mysize]); % dimension on x axis and y axis resp.
% print(gcf,'-dpdf', ['GeneAutocatalysis_4.pdf'])
% 
% figure
% n=4;
% r=0.1;
% linewid=1.5;
% x=[0:step/2:0.2];
% hold on
% a=90;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.4660 0.6740 0.1880],'LineWidth',linewid);
% a=105.5;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.3010 0.7450 0.9330],'LineWidth',linewid);
% a=110;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.6350 0.0780 0.1840],'LineWidth',linewid);
% yline(0);
% ylim([-0.01 0.12])
% xlabel('x')
% ylabel('f(x)')
% legend({'a=90','a=a_{c,2}','a=110'},'Location','southwest')
% fontsize(13,"points")
% axes('Position',[.4 .6 .3 .3])
% box on
% hold on
% x=[0:step:120];
% yline(0);
% a=90;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.4660 0.6740 0.1880],'LineWidth',linewid);
% a=105.5;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.3010 0.7450 0.9330],'LineWidth',linewid);
% a=110;
% plot(x,a*x.^n./(1+x.^n)-x+r,'-','color',[0.6350 0.0780 0.1840],'LineWidth',linewid);
% xlim([0 120])
% xlabel('x')
% ylabel('f(x)')

% figure
% x=[0:step:4];
% n=2;
% r=0.1;
% hold on
% a=1;
% plot(x,a*x.^n./(1+x.^n));
% a=1.77;
% plot(x,a*x.^n./(1+x.^n));
% a=2;
% plot(x,a*x.^n./(1+x.^n));
% a=2.6;
% plot(x,a*x.^n./(1+x.^n));
% a=4;
% plot(x,a*x.^n./(1+x.^n));
% plot(x,x-r,'k');
% legend
% xlim([0 3])
% %ylim([-0.1 0.2])
% ylim([-0.1 8])

%%%%%%%%%%%%%%%%%%%%%%

x=x0;
xplot = [x];

for t=step:step:horizon

    x = x + step*(a*x.^n./(1+x.^n)-x+r);
    xplot = [xplot x];

end

figure()
plot([0:step:horizon],xplot)

%4*n/(n^2-1)*(n-1/(n+1))^(1/n)