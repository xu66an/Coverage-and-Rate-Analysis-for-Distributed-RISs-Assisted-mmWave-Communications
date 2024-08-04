%% gloabl parameters
RF_fre=28e9;%3.5GHz
half_wave_length=3e8/RF_fre/2;%

%% Large scale fading
%28+22log10(d)+20log10(RF_fre)
Alpha=-28-20*log10(RF_fre/1e9);
Alpha=Alpha/10;
Beta=2.2;


N_u=4;
N_BS=64;

Bandwidth=200;%MHz
Noise=-174;%dBm  -174dBm/Hz
Noise=Noise+10*log10(Bandwidth*1e6);
Noise=db2pow(Noise);%W

BS_power=10;%dBm
BS_power=db2pow(BS_power);
    
%square ris .5*.5
small_IRS_square=0.5;
N_R=(floor(small_IRS_square/half_wave_length))^2;
% N_R=100;

% SINR_threshold=5;
% T=10^(SINR_threshold/10);
% RIS
% lambda_R=1/pi/R^2;

%% equa
num_MC=50;
%% 多基站模拟
radius=1000;
% BS
R=100;%单个小区半径
% lambda_Y=1/pi/R^2;

%用户数量（对lambda_u在区域上积分）
num_u=50;
lambda_u=num_u/pi/R^2;
% typical user location 
User_loc=[0,0];

% Blockage
% num_b=50;
% lambda_b=num_b/pi/R^2;
E_L=15; % everage length of the blockages




