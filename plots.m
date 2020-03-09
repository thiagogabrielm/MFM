figure

m = 50;
x = 0:0.05:m;
y = (atan(100) + atan(0.2*(-(m/2)+x)))/pi;
plot(x,y)
hold on

x1 = 0:0.05:m;
a = 0.20;
b = (20);
c = 0.1;
y1 = a*exp(- (x1 - b).^2/2*c^2);
plot(x1,y1)

plot(x, y.*(1+y1))
grid on

%%
figure

plot(x,y)
hold on

x2 = 0:0.05:m;
a2 = 0.75;
b2 = (18);
c2 = 0.35;
y2 = -a2*exp(- (x2 - b2).^2/2*c2^2);
% plot(x2,y2)


x3 = 0:0.05:m;
a3 = 0.25;
b3 = (22);
c3 = 0.15;
y3 = a3*exp(- (x3 - b3).^2/2*c3^2);
% plot(x3,y3)

plot(x, y.*(1+y2+y3))
grid on

plot(x, y2+y3)

%%
figure

subplot(3,1,1)
plot(x, y1,'m')
grid on

subplot(3,1,[2,3])
plot(x,y,'--b')
hold on
plot(x, y.*(1+y1),'m')
grid on

%%
figure

subplot(3,1,1)
plot(x, y2+y3,'m')
grid on

subplot(3,1,[2,3])
plot(x,y,'--b')
hold on
plot(x, y.*(1+y2+y3),'m')
grid on

%%
figure 
x11 = 0:0.05:19.95;
x1 = 20:0.05:m;

a = 0.20;
b = (20);
c = 0.1;
c11 = 0.15;
y1 = a*exp(- (x1 - b).^2/2*c^2);
y11 = a*exp(- (x11 - b).^2/2*c11^2);
plot(x1,y1)
hold on
plot(x11,y11)
grid on

plot(x, y.*(1+[y11 y1]))
plot(x,y)

%% Plot MF progression (time)
figure('Units','inches',...
           'Position',[1 1 3.5 1.5],...%'Position',[10 5 2.5*18 2.5*8],...
           'PaperPositionMode','auto');
set(gca,...
    'Units','normalized',...
    'Position',[.08 .13 .9 .85],...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',10,...
    'FontName','Times')

m = 50;
x = 0:0.05:m;
y = (atan(100) + atan(0.2*(-(m/2)+x)))/pi;
plot(x,y)
grid on

ylim([0 1])
xlim([0 50])

xticks(0 : 5 : m)
yticks(0 : 0.2 : 1)

xlabel('time', 'FontSize', 9)
ylabel('Mental fatigue level', 'FontSize', 9)

xticklabels({})
yticklabels({})

print -depsc2 MF_progression_time.eps

%% Plot Penalty function (continuous)
figure('Units','inches',...
           'Position',[1 1 3.5 1.5],...%'Position',[10 5 2.5*18 2.5*8],...
           'PaperPositionMode','auto');
set(gca,...
    'Units','normalized',...
    'Position',[.08 .13 .9 .85],...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',10,...
    'FontName','Times')

m = 50;
x1 = 0:0.05:m;
a = 0.15;
b = m/2.;
c = 0.1;
y1 = a*exp(- (x1 - b).^2/2*c^2);
plot(x1,y1)

grid on

ylim([0 0.2])
xlim([0 50])

xticks(0 : 5 : m)
yticks(0 : 0.05 : 0.2)

xlabel('time', 'FontSize', 9)
ylabel('Penalty function', 'FontSize', 9)

xticklabels({})
yticklabels({})

print -depsc2 penalty_continuous.eps

%% Plot Penalty function (punctual)
figure('Units','inches',...
           'Position',[1 1 3.5 1.5],...%'Position',[10 5 2.5*18 2.5*8],...
           'PaperPositionMode','auto');
set(gca,...
    'Units','normalized',...
    'Position',[.08 .13 .9 .85],...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',10,...
    'FontName','Times')

m = 50;
x2 = 0:0.05:m;
a2 = 0.75;
b2 = (18);
c2 = 0.35;
y2 = -a2*exp(- (x2 - b2).^2/2*c2^2);

x3 = 0:0.05:m;
a3 = 0.25;
b3 = (22);
c3 = 0.15;
y3 = a3*exp(- (x3 - b3).^2/2*c3^2);

plot(x, y2+y3)
grid on

ylim([-0.6 0.3])
xlim([0 50])

xticks(0 : 5 : m)
yticks(-0.6 : 0.15 : 0.3)

xlabel('time', 'FontSize', 9)
ylabel('Penalty function', 'FontSize', 9)

xticklabels({})
yticklabels({})

print -depsc2 penalty_punctual.eps

%% Plotting "prediction composition" figure

S.T = 50;
S.Alpha = 1.0;
S.Beta = 0.2;
S.Gamma = 2.0;


S.x = 10:0.05:25;
S.y = S.Alpha/2 + (S.Alpha*atan(S.Beta*(-(S.T/S.Gamma)+S.x)))/pi + 0.04*rand(1,length(S.x));
S.xx = 25:0.05:S.T;
S.yy = S.Alpha/2 + (S.Alpha*atan(S.Beta*(-(S.T/S.Gamma)+S.xx)))/pi;

figure('Units','inches',...
           'Position',[1 1 1.5*3.5 1.5*3.5],...%'Position',[10 5 2.5*18 2.5*8],...
           'PaperPositionMode','auto');
set(gca,...
    'Units','normalized',...
    'Position',[.08 .13 .9 .85],...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',20,...
    'FontName','Times')
subplot('position', [0.05 .75 .4 .22])
box on
hold on

fill([10 10 S.T S.T],[0.8 1.2 1.2 0.8],'r','EdgeColor','none','FaceAlpha',0.4,'HandleVisibility','off')
fill([10 10 S.T S.T],[0.4 0.8 0.8 0.4],'y','EdgeColor','none','FaceAlpha',0.4,'HandleVisibility','off')
fill([10 10 S.T S.T],[0.0 0.4 0.4 0.0],'g','EdgeColor','none','FaceAlpha',0.4,'HandleVisibility','off')

S.LN1 = plot(S.x,S.y,"b");

grid on
ylim([0 1.2])
xlim([10 50])
xlabel('time', 'FontSize', 10)
ylabel('Mental fatigue level')
xticklabels({})
yticklabels({})

% figure
subplot('position', [0.56 .4 .4 .22])
box on
hold on
fill([10 10 S.T S.T],[0.8 1.2 1.2 0.8],'r','EdgeColor','none','FaceAlpha',0.4,'HandleVisibility','off')
fill([10 10 S.T S.T],[0.4 0.8 0.8 0.4],'y','EdgeColor','none','FaceAlpha',0.4,'HandleVisibility','off')
fill([10 10 S.T S.T],[0.0 0.4 0.4 0.0],'g','EdgeColor','none','FaceAlpha',0.4,'HandleVisibility','off')

S.LN1 = plot(S.xx,S.yy);
grid on
ylim([0 1.2])
xlim([10 50])
xlabel('time')
ylabel('Mental fatigue level')
xticklabels({})
yticklabels({})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.x = 0:0.05:50;
S.A1 = 0.1;
S.B1 = 1.3;
S.C1 = 0.11;

S.y1 = S.A1*exp(- (S.x - S.T/S.B1).^2/2*S.C1^2);

% figure
subplot('position', [0.56 .05 .4 .22])
S.LN2 = plot(S.x,S.y1);
grid on

xlim([10 50])
xlabel('time')
ylabel('Penalty function')
xticklabels({})
yticklabels({})

%%%%%%%%%%%%%%%%%%%%%%

S.A2 = 0.47;
S.B2 = 1.6;
S.C2 = 0.82;

S.y2 = -S.A2*exp(- (S.x - S.T/S.B2).^2/2*S.C2^2);

S.A3 = 0.1;
S.B3 = 1.4;
S.C3 = 0.63;

S.y3 = S.A3*exp(- (S.x - S.T/S.B3).^2/2*S.C3^2);

% figure
subplot('position', [0.56 .75 .4 .22])
S.LN3 = plot(S.x,S.y2+S.y3);
grid on
xlim([10 50])
xlabel('time')
ylabel('Penalty function')
xticklabels({})
yticklabels({})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% figure
subplot('position', [0.05 .05 .4 .22])
box on
hold on

fill([10 10 S.T S.T],[0.8 1.2 1.2 0.8],'r','EdgeColor','none','FaceAlpha',0.4,'HandleVisibility','off')
fill([10 10 S.T S.T],[0.4 0.8 0.8 0.4],'y','EdgeColor','none','FaceAlpha',0.4,'HandleVisibility','off')
fill([10 10 S.T S.T],[0.0 0.4 0.4 0.0],'g','EdgeColor','none','FaceAlpha',0.4,'HandleVisibility','off')

S.LN5 = plot(S.x(201:501),S.y);
S.LN4 = plot(S.x(501:end),S.yy.*(1+S.y1(501:end)+S.y2(501:end)+S.y3(501:end)),'--k');

grid on
ylim([0 1.2])
xlim([10 50])
xlabel('time')
ylabel('Mental fatigue level')
xticklabels({})
yticklabels({})

X = [0.46 0.5];
Y = [0.85  0.85];
annotation('arrow',X,Y);
X = [0.5 0.46];
Y = [0.15   0.15];
annotation('arrow',X,Y);

annotation('rectangle',[0.51 0.01 0.47 0.98]);
annotation('textbox',[0.73 0.27 0.1 0.1],'String','+','FitBoxToText','on','FontSize',20,'LineStyle','none');
annotation('textbox',[0.73 0.62 0.1 0.1],'String','+','FitBoxToText','on','FontSize',20,'LineStyle','none');

annotation('textbox',[0.39 0.725 0.1 0.1],'String','1','FitBoxToText','on','FontSize',20,'LineStyle','none');
annotation('textbox',[0.9 0.375 0.1 0.1],'String','2','FitBoxToText','on','FontSize',20,'LineStyle','none');
annotation('textbox',[0.9 0.725 0.1 0.1],'String','3','FitBoxToText','on','FontSize',20,'LineStyle','none');
annotation('textbox',[0.9 0.025 0.1 0.1],'String','4','FitBoxToText','on','FontSize',20,'LineStyle','none');
annotation('textbox',[0.39 0.025 0.1 0.1],'String','5','FitBoxToText','on','FontSize',20,'LineStyle','none');


print -depsc2 -tiff -r300 -painters prediction_composition.eps
% print -depsc2 prediction_composition.eps
%% Comparing different Scenarios on the same plot

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Scenario S0

S.T = 50;
S.Alpha = 1.0;
S.Beta = 0.2;
S.Gamma = 2.0;

S.x = 0:0.05:S.T;
S.y = S.Alpha/2 + (S.Alpha*atan(S.Beta*(-(S.T/S.Gamma)+S.x)))/pi ;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Scenario S1

S.x = 0:0.05:50;
S.A1 = 0.1;
S.B1 = 1.3;
S.C1 = 0.11;

S.y1 = S.A1*exp(- (S.x - S.T/S.B1).^2/2*S.C1^2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Scenario S2

S.A21 = 0.47;
S.B21 = 1.6;
S.C21 = 0.82;

S.A22 = 0.1;
S.B22 = 1.4;
S.C22 = 0.63;

S.y2 = -S.A21*exp(- (S.x - S.T/S.B21).^2/2*S.C21^2) + S.A22*exp(- (S.x - S.T/S.B22).^2/2*S.C22^2);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Scenario S3

S.A3 = 0.20;
S.B3 = 2;
S.C3 = 0.1;

S.y3 = S.A3*exp(- (S.x - S.T/S.B3).^2/2*S.C3^2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Scenario S4
% Scenario S3

S.A4 = 0.25;
S.B4 = 2.3;
S.C4 = 0.2;

S.y4 = S.A4*exp(- (S.x - S.T/S.B4).^2/2*S.C4^2);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Final plot
figure('Units','inches',...
           'Position',[1 1 3.5 2],...%'Position',[10 5 2.5*18 2.5*8],...
           'PaperPositionMode','auto');
set(gca,...
    'Units','normalized',...
    'Position',[.08 .13 .9 .85],...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',10,...
    'FontName','Times')

fill([10 10 S.T S.T],[0.8 1.2 1.2 0.8],'r','EdgeColor','none','FaceAlpha',0.3,'HandleVisibility','off')
hold on
fill([10 10 S.T S.T],[0.4 0.8 0.8 0.4],'y','EdgeColor','none','FaceAlpha',0.3,'HandleVisibility','off')
fill([10 10 S.T S.T],[0.0 0.4 0.4 0.0],'g','EdgeColor','none','FaceAlpha',0.3,'HandleVisibility','off')

S.LN0 = plot(S.x,S.y,'--');

S.LN1 = plot(S.x,S.y.*(1+S.y1),'g');
S.LN2 = plot(S.x,S.y.*(1+S.y2),'k');
S.LN3 = plot(S.x,S.y.*(1+S.y3),'r');
S.LN4 = plot(S.x,S.y.*(1+S.y4),'m');


ylim([0 1.2])
xlim([10 50])
xlabel('time', 'FontSize', 9)
ylabel('Mental fatigue level', 'FontSize', 9)
xticklabels({})
yticklabels({})

legend('Scenario S_0','Scenario S_1','Scenario S_2','Scenario S_3','Scenario S_4','Location','southeast')
grid on
print -depsc2 considering_different_scenarios.eps
























