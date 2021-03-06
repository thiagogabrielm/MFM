%%
clear all
close all
clc

%%
S.fh = figure('units','pixels',...
              'position',[300 300 1250 1050],...
              'menubar','none',...
              'name','slider_plot',...
              'numbertitle','off',...
              'resize','off');    


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.ax1 = axes('unit','pix','position',[50 800 800 200]);
 
S.T = 50;
S.Alpha = 1.0;
S.Beta = 0.2;
S.Gamma = 2.0;

S.x = 0:0.05:S.T;
S.y = S.Alpha/2 + (S.Alpha*atan(S.Beta*(-(S.T/S.Gamma)+S.x)))/pi;

S.LN1 = plot(S.ax1,S.x,S.y);
grid on

S.sT = uicontrol('style','slide',...
                 'unit','pix',...
                 'position',[875 950 100 25],...
                 'min',0,'max',100,'val',S.T,...
                 'sliderstep',[1/100 1/100]); 

S.lT = annotation('textbox','unit','pix','Position',[915 975 25 25],...
                  'String','T','FontSize',12,'LineStyle','none');

S.tT = uicontrol('Style','text',...
                 'Position',[975 950 50 25],...
                 'String',num2str(S.T),'FontSize',12,...
                 'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sAlpha = uicontrol('style','slide',...
                     'unit','pix',...
                     'position',[875 900 100 25],...
                     'min',0,'max',10,'val',S.Alpha,...
                     'sliderstep',[1/100 1/100]); 

S.lAlpha = annotation('textbox','unit','pix','Position',[915 925 25 25],...
                      'String','\alpha','FontSize',12,'LineStyle','none');
             
S.tAlpha = uicontrol('Style','text',...
                     'Position',[975 900 50 25],...
                     'String',num2str(S.Alpha),...
                     'FontSize',12,'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sBeta = uicontrol('style','slide',...
                    'unit','pix',...
                    'position',[875 850 100 25],...
                    'min',0,'max',2,'val',S.Beta,...
                    'sliderstep',[1/40 1/40]);

S.lBeta = annotation('textbox','unit','pix','Position',[915 875 25 25],...
                      'String','\beta','FontSize',12,'LineStyle','none');

S.tBeta = uicontrol('Style','text',...
                    'Position',[975 850 50 25],...
                    'String',num2str(S.Beta),...
                    'FontSize',12,'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sGamma = uicontrol('style','slide','unit','pix',...
                     'position',[875 800 100 25],...
                     'min',0,'max',10,'val',S.Gamma,...
                     'sliderstep',[1/20 1/20]);

S.lGamma = annotation('textbox','unit','pix','Position',[915 825 25 25],...
                      'String','\gamma','FontSize',12,'LineStyle','none');

S.tGamma = uicontrol('Style','text',...
                     'Position',[975 800 50 25],...
                     'String',num2str(S.Gamma),...
                     'FontSize',12,'BackgroundColor','w');
               
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.ax2 = axes('unit','pix','position',[50 550 800 200]);

S.A1 = 0.20;
S.B1 = 2;
S.C1 = 0.1;

S.y1 = S.A1*exp(- (S.x - S.T/S.B1).^2/2*S.C1^2);

S.LN2 = plot(S.ax2,S.x,S.y1);
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sA1 = uicontrol('style','slide',...
                  'unit','pix',...
                  'position',[875 650 100 25],...
                  'min',0,'max',1,'val',S.A1,...
                  'sliderstep',[1/100 1/100]); 

S.lA1 = annotation('textbox','unit','pix','Position',[915 680 25 25],...
                      'String','a_1','FontSize',12,'LineStyle','none');

S.tA1 = uicontrol('Style','text',...
                  'Position',[975 650 50 25],...
                  'String',num2str(S.A1),'FontSize',12,'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sB1 = uicontrol('style','slide',...
                  'unit','pix',...
                  'position',[875 600 100 25],...
                  'min',0,'max',10,'val',S.B1,...
                  'sliderstep',[1/100 1/100]);

S.lB1 = annotation('textbox','unit','pix','Position',[915 630 25 25],...
                      'String','b_1','FontSize',12,'LineStyle','none');

S.tB1 = uicontrol('Style','text',...
                  'Position',[975 600 50 25],...
                  'String',num2str(S.B1),'FontSize',12,'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sC1 = uicontrol('style','slide',...
                  'unit','pix',...
                  'position',[875 550 100 25],...
                  'min',0,'max',1,'val',S.C1,...
                  'sliderstep',[1/100 1/100]);  

S.lC1 = annotation('textbox','unit','pix','Position',[915 580 25 25],...
                   'String','c_1','FontSize',12,'LineStyle','none');

S.tC1 = uicontrol('Style','text',...
                  'Position',[975 550 50 25],...
                  'String',num2str(S.C1),'FontSize',12,'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.ax3 = axes('unit','pix','position',[50 300 800 200]);

S.A2 = 0.75;
S.B2 = 2.8;
S.C2 = 0.35;

S.y2 = -S.A2*exp(- (S.x - S.T/S.B2).^2/2*S.C2^2);

S.A3 = 0.25;
S.B3 = 2.3;
S.C3 = 0.15;

S.y3 = S.A3*exp(- (S.x - S.T/S.B3).^2/2*S.C3^2);

S.LN3 = plot(S.ax3,S.x,S.y2+S.y3);

grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sA2 = uicontrol('style','slide',...
                  'unit','pix',...
                  'position',[875 400 100 25],...
                  'min',0,'max',1,'val',S.A2,...
                  'sliderstep',[1/100 1/100]);

S.lA2 = annotation('textbox','unit','pix','Position',[915 430 25 25],...
                   'String','a_2','FontSize',12,'LineStyle','none');

S.tA2 = uicontrol('Style','text',...
                  'Position',[975 400 50 25],...
                  'String',num2str(S.A2),'FontSize',12,'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sB2 = uicontrol('style','slide',...
                 'unit','pix',...
                 'position',[875 350 100 25],...
                 'min',0,'max',10,'val',S.B2,...
                 'sliderstep',[1/100 1/100]);

S.lB2 = annotation('textbox','unit','pix','Position',[915 380 25 25],...
                   'String','b_2','FontSize',12,'LineStyle','none');

S.tB2 = uicontrol('Style','text',...
                  'Position',[975 350 50 25],...
                  'String',num2str(S.B2),'FontSize',12,'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sC2 = uicontrol('style','slide',...
                  'unit','pix',...
                  'position',[875 300 100 25],...
                  'min',0,'max',1,'val',S.C2,...
                  'sliderstep',[1/100 1/100]);

S.lC2 = annotation('textbox','unit','pix','Position',[915 330 25 25],...
                   'String','c_2','FontSize',12,'LineStyle','none');

S.tC2 = uicontrol('Style','text',...
                  'Position',[975 300 50 25],...
                  'String',num2str(S.C2),'FontSize',12,'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sA3 = uicontrol('style','slide',...
                  'unit','pix',...
                  'position',[1050 400 100 25],...
                  'min',0,'max',1,'val',S.A3,...
                  'sliderstep',[1/100 1/100]);
              
S.lA3 = annotation('textbox','unit','pix','Position',[1090 430 25 25],...
                   'String','a_3','FontSize',12,'LineStyle','none');

S.tA3 = uicontrol('Style','text',...
                  'Position',[1150 400 50 25],...
                  'String',num2str(S.A3),'FontSize',12,'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sB3 = uicontrol('style','slide',...
                  'unit','pix',...
                  'position',[1050 350 100 25],...
                  'min',0,'max',10,'val',S.B3,...
                  'sliderstep',[1/100 1/100]);

S.lB3 = annotation('textbox','unit','pix','Position',[1090 380 25 25],...
                   'String','b_3','FontSize',12,'LineStyle','none');

S.tB3 = uicontrol('Style','text',...
                  'Position',[1150 350 50 25],...
                  'String',num2str(S.B3),'FontSize',12,'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.sC3 = uicontrol('style','slide',...
                  'unit','pix',...
                  'position',[1050 300 100 25],...
                  'min',0,'max',1,'val',S.C3,...
                  'sliderstep',[1/100 1/100]);  

S.lC3 = annotation('textbox','unit','pix','Position',[1090 330 25 25],...
                   'String','c_3','FontSize',12,'LineStyle','none');

S.tC3 = uicontrol('Style','text',...
                  'Position',[1150 300 50 25],...
                  'String',num2str(S.C3),'FontSize',12,'BackgroundColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S.ax4 = axes('unit','pix','position',[50 50 800 200]);
hold on
S.LN4 = plot(S.ax4,S.x,S.y.*(1+S.y1+S.y2+S.y3));
S.LN5 = plot(S.ax4,S.x,S.y,'--r');

grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(S.sT,'callback',{@updatePlots,S})
set(S.sAlpha,'callback',{@updatePlots,S})
set(S.sBeta,'callback',{@updatePlots,S})
set(S.sGamma,'callback',{@updatePlots,S})

set(S.sA1,'callback',{@updatePlots,S})
set(S.sB1,'callback',{@updatePlots,S})
set(S.sC1,'callback',{@updatePlots,S})
 
set(S.sA2,'callback',{@updatePlots,S})
set(S.sB2,'callback',{@updatePlots,S})
set(S.sC2,'callback',{@updatePlots,S})
set(S.sA3,'callback',{@updatePlots,S})
set(S.sB3,'callback',{@updatePlots,S})
set(S.sC3,'callback',{@updatePlots,S})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [] = updatePlots(varargin)
   
    S = varargin{3};  % calling handle and data structure.
    
    S.T = get(S.sT,'Value');
    S.Alpha = get(S.sAlpha,'Value');
    S.Beta = get(S.sBeta,'Value');
    S.Gamma = get(S.sGamma,'Value');

    S.x = 0:0.05:S.T;
    S.y = S.Alpha/2 + (S.Alpha*atan(S.Beta*(-(S.T/S.Gamma)+S.x)))/pi;
    
    S.A1 = get(S.sA1,'Value');
    S.B1 = get(S.sB1,'Value');
    S.C1 = get(S.sC1,'Value');
    
    S.y1 = S.A1*exp(- (S.x - S.T/S.B1).^2/2*S.C1^2);
    
    S.A2 = get(S.sA2,'Value');
    S.B2 = get(S.sB2,'Value');
    S.C2 = get(S.sC2,'Value');
    
    S.y2 = -S.A2*exp(- (S.x - S.T/S.B2).^2/2*S.C2^2);

    S.A3 = get(S.sA3,'Value');
    S.B3 = get(S.sB3,'Value');
    S.C3 = get(S.sC3,'Value');
    
    S.y3 = S.A3*exp(- (S.x - S.T/S.B3).^2/2*S.C3^2);
    
    set(S.tT,'String',num2str(S.T))
    set(S.tAlpha,'String',num2str(S.Alpha))
    set(S.tBeta,'String',num2str(S.Beta))
    set(S.tGamma,'String',num2str(S.Gamma))
    
    set(S.tA3,'String',num2str(S.A3))
    set(S.tB3,'String',num2str(S.B3))
    set(S.tC3,'String',num2str(S.C3))
    
    set(S.tA1,'String',num2str(S.A1))
    set(S.tB1,'String',num2str(S.B1))
    set(S.tC1,'String',num2str(S.C1))
    
    set(S.tA2,'String',num2str(S.A2))
    set(S.tB2,'String',num2str(S.B2))
    set(S.tC2,'String',num2str(S.C2))
    
    set(S.LN1,'xdata',S.x,'ydata',S.y)
    set(S.ax1,'xlim',[0 S.T])
    set(S.LN2,'xdata',S.x,'ydata',S.y1)
    set(S.ax2,'xlim',[0 S.T])
    set(S.LN3,'xdata',S.x,'ydata',S.y2+S.y3)
    set(S.ax3,'xlim',[0 S.T])
    set(S.LN5,'xdata',S.x,'ydata',S.y); 
    set(S.LN4,'xdata',S.x,'ydata',S.y.*(1+S.y1+S.y2+S.y3)); 
    set(S.ax4,'xlim',[0 S.T])
end