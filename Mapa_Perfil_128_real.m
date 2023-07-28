function [Massa,d,A,Zx,Ix,Bf,Zy,Iy,rgx,rgy,lambda_W,lambda_F,tw] = ...
    Mapa_Perfil_128_real(x,Massa,d,A,Zx,Ix,Bf,Zy,Iy,rgx,rgy,lambda_W,lambda_F,tw)

% Engenheiro Paulo César
%% Banco de dados com 128 perfis nacionais
% Para incluir basta criar mais uma for e seguir o padrão
% Lembrete: Alterar a quantidade na função Limites_VPs

%%
global  nvar_perfis
% -------------------------------------------------------------------------

% massa=zeros(n_grupo,2);d=zeros(n_grupo,2);A=zeros(n_grupo,2);Zx=zeros(n_grupo,2);Ix=zeros(n_grupo,2);
% Bf=zeros(n_grupo,2);Zy=zeros(n_grupo,2);Iy=zeros(n_grupo,2);

% ===========================================
% Perfis Laminados I e H (Gerdau) Aço AR 350
% ===========================================

for i=1:nvar_perfis
    
    if x(i)==1 % perfil I 150 x 13.0 (W6x8.5)     / 1
        
        d_perfil   =  0.148;      massa_perfil  =  13.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.100;      A_perfil      =  1.66e-3;  %  (m) / (m2)
        Zx_perfil  =  9.64e-5;    Zy_perfil     =  2.55e-5;  % (m3) / (m3)
        Ix_perfil  =  6.35e-6;    Iy_perfil     =  8.2e-7;   % (m4) / (m4)
        raiogx     =  0.0618;     raiogy        =  0.0222;   % (m) / (m)
        Alma_W     =  27.49;      Mesa_F        =  10.20;    % (h0/t0) / (b/2t)
        E_tw       =  4.3e-3;                                % (m)
        
    elseif x(i)==2 % perfil I 150 x 18.0  (W6x12)     /2
        
        d_perfil   =  0.153;      massa_perfil  =  18.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.102;      A_perfil      =  2.34e-3;  %  (m) / (m2)
        Zx_perfil  =  1.394e-4;   Zy_perfil     =  3.85e-5;  % (m3) / (m3)
        Ix_perfil  =  9.39e-6;    Iy_perfil     =  1.26e-6;  % (m4) / (m4)
        raiogx     =  0.0634;     raiogy        =  0.0232;   % (m) / (m)
        Alma_W     =  20.48;      Mesa_F        =  7.18;     % (h0/t0) / (b/2t)
        E_tw       =  5.8e-3;                                % (m)
        
    elseif x(i)==3 % perfil H 150 x 22.5  (W6x15)    /3
        
        d_perfil   =  0.152;      massa_perfil  =  22.5;     %  (m) / (kg/m)
        Bf_perfil  =  0.152;      A_perfil      =  2.9e-3;   %  (m) / (m2)
        Zx_perfil  =  1.796e-4;   Zy_perfil     =  7.79e-5;  % (m3) / (m3)
        Ix_perfil  =  1.229e-5;   Iy_perfil     =  3.87e-6;  % (m4) / (m4)
        raiogx     =  0.0651;     raiogy        =  0.0365;   % (m) / (m)
        Alma_W     =  20.48;      Mesa_F        =  11.52;    % (h0/t0) / (b/2t)
        E_tw       =  5.8e-3;                                % (m)
        
    elseif x(i)==4 % perfil I 150 x 24.0  (W6x16)    /4
        
        d_perfil   =  0.160;      massa_perfil  =  24.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.102;      A_perfil      =  3.15e-3;  %  (m) / (m2)
        Zx_perfil  =  1.976e-4;   Zy_perfil     =  5.58e-5;  % (m3) / (m3)
        Ix_perfil  =  1.384e-5;   Iy_perfil     =  1.83e-6;  % (m4) / (m4)
        raiogx     =  0.0663;     raiogy        =  0.0241;   % (m) / (m)
        Alma_W     =  17.48;      Mesa_F        =  4.95;     % (h0/t0) / (b/2t)
        E_tw       =  6.6e-3;                                % (m)
        
    elseif x(i)==5 % perfil H 150 x 29.8  (W6x20)    /5
        
        d_perfil   =  0.157;      massa_perfil  =  29.8;     %  (m) / (kg/m)
        Bf_perfil  =  0.153;      A_perfil      =  38.5e-3;  %  (m) / (m2)
        Zx_perfil  =  2.475e-4;   Zy_perfil     =  1.108e-4; % (m3) / (m3)
        Ix_perfil  =  1.739e-5;   Iy_perfil     =  5.56e-6;  % (m4) / (m4)
        raiogx     =  0.0672;     raiogy        =  0.0380;   % (m) / (m)
        Alma_W     =  17.94;      Mesa_F        =  8.23;     % (h0/t0) / (b/2t)
        E_tw       =  6.6e-3;                                % (m)
        
    elseif x(i)==6 % perfil H 150 x 37.1  (W6x25)    /6
        
        d_perfil   =  0.162;      massa_perfil  =  37.1;     %  (m) / (kg/m)
        Bf_perfil  =  0.154;      A_perfil      =  4.78e-3;  %  (m) / (m2)
        Zx_perfil  =  3.135e-4;   Zy_perfil     =  1.404e-4; % (m3) / (m3)
        Ix_perfil  =  2.244e-5;   Iy_perfil     =  7.07e-6;  % (m4) / (m4)
        raiogx     =  0.0685;     raiogy        =  0.0384;   % (m) / (m)
        Alma_W     =  14.67;      Mesa_F        =  6.64;     % (h0/t0) / (b/2t)
        E_tw       =  8.1e-3;                                % (m)
        
    elseif x(i)==7 % perfil I 200 x 15.0  (W8x10)     /7
        
        d_perfil   =  0.200;      massa_perfil  =  15.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.100;      A_perfil      =  1.94e-3;  %  (m) / (m2)
        Zx_perfil  =  1.479e-4;   Zy_perfil     =  2.73e-5;  % (m3) / (m3)
        Ix_perfil  =  1.305e-5;   Iy_perfil     =  8.7e-7;   % (m4) / (m4)
        raiogx     =  0.0820;     raiogy        =  0.0212;   % (m) / (m)
        Alma_W     =  39.44;      Mesa_F        =  9.62;     % (h0/t0) / (b/2t)
        E_tw       =  4.3e-3;                                % (m)
        
    elseif x(i)==8 % perfil I 200 x 22.5  (W8x15)     /8
        
        d_perfil   =  0.206;      massa_perfil  =  22.5;     %  (m) / (kg/m)
        Bf_perfil  =  0.102;      A_perfil      =  2.90e-3;  %  (m) / (m2)
        Zx_perfil  =  2.255e-4;   Zy_perfil     =  4.39e-5;  % (m3) / (m3)
        Ix_perfil  =  2.029e-5;   Iy_perfil     =  1.42e-6;  % (m4) / (m4)
        raiogx     =  0.0837;     raiogy        =  0.0222;   % (m) / (m)
        Alma_W     =  27.42;      Mesa_F        =  6.38;     % (h0/t0) / (b/2t)
        E_tw       =  6.2e-3;                                % (m)
        
    elseif x(i)==9 % perfil I 200 x 26.6  (W8x18)     /9
        
        d_perfil   =  0.207;      massa_perfil  =  26.6;     %  (m) / (kg/m)
        Bf_perfil  =  0.133;      A_perfil      =  3.42e-3;  %  (m) / (m2)
        Zx_perfil  =  2.823e-4;   Zy_perfil     =  7.63e-5;  % (m3) / (m3)
        Ix_perfil  =  2.611e-5;   Iy_perfil     =  3.30e-6;  % (m4) / (m4)
        raiogx     =  0.0873;     raiogy        =  0.0310;   % (m) / (m)
        Alma_W     =  29.34;      Mesa_F        =  7.92;     % (h0/t0) / (b/2t)
        E_tw       =  5.8e-3;                                % (m)
        
    elseif x(i)==10 % perfil I 200 x 31.3  (W8x21)     /10
        
        d_perfil   =  0.210;      massa_perfil  =  31.3;     %  (m) / (kg/m)
        Bf_perfil  =  0.134;      A_perfil      =  4.03e-3;  %  (m) / (m2)
        Zx_perfil  =  3.386e-4;   Zy_perfil     =  9.40e-5;  % (m3) / (m3)
        Ix_perfil  =  3.168e-5;   Iy_perfil     =  4.10e-6;  % (m4) / (m4)
        raiogx     =  0.0886;     raiogy        =  0.0319;   % (m) / (m)
        Alma_W     =  26.50;      Mesa_F        =  6.57;     % (h0/t0) / (b/2t)
        E_tw       =  6.4e-3;                                % (m)
        
    elseif x(i)==11 % perfil H 200 x 35.9  (W8x24)       /11
        
        d_perfil   =  0.201;      massa_perfil  =  35.9;     %  (m) / (kg/m)
        Bf_perfil  =  0.165;      A_perfil      =  4.57e-3;  %  (m) / (m2)
        Zx_perfil  =  3.792e-4;   Zy_perfil     =  1.41e-4;  % (m3) / (m3)
        Ix_perfil  =  3.437e-5;   Iy_perfil     =  7.64e-6;  % (m4) / (m4)
        raiogx     =  0.0867;     raiogy        =  0.0409;   % (m) / (m)
        Alma_W     =  25.90;      Mesa_F        =  8.09;     % (h0/t0) / (b/2t)
        E_tw       =  6.2e-3;                                % (m)
        
    elseif x(i)==12 % perfil H 200 x 41.7  (W8x28)       /12
        
        d_perfil   =  0.205;      massa_perfil  =  41.7;     %  (m) / (kg/m)
        Bf_perfil  =  0.166;      A_perfil      =  5.35e-3;  %  (m) / (m2)
        Zx_perfil  =  4.486e-4;   Zy_perfil     =  1.657e-4; % (m3) / (m3)
        Ix_perfil  =  4.114e-5;   Iy_perfil     =  9.01e-6;  % (m4) / (m4)
        raiogx     =  0.0877;     raiogy        =  0.0410;   % (m) / (m)
        Alma_W     =  21.86;      Mesa_F        =  7.03;     % (h0/t0) / (b/2t)
        E_tw       =  7.2e-3;                                % (m)
        
    elseif x(i)==13 % perfil H 200 x 46.1  (W8x31)       /13
        
        d_perfil   =  0.203;      massa_perfil  =  46.7;     %  (m) / (kg/m)
        Bf_perfil  =  0.203;      A_perfil      =  5.86e-3;  %  (m) / (m2)
        Zx_perfil  =  4.953e-4;   Zy_perfil     =  2.295e-4; % (m3) / (m3)
        Ix_perfil  =  4.543e-5;   Iy_perfil     =  1.535e-5; % (m4) / (m4)
        raiogx     =  0.0881;     raiogy        =  0.0512;   % (m) / (m)
        Alma_W     =  22.36;      Mesa_F        =  9.23;     % (h0/t0) / (b/2t)
        E_tw       =  7.2e-3;                                % (m)
        
    elseif x(i)==14 % perfil H 200 x 52.0  (W8x35)       /14
        
        d_perfil   =  0.206;      massa_perfil  =  52.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.204;      A_perfil      =  6.69e-3;  %  (m) / (m2)
        Zx_perfil  =  5.725e-4;   Zy_perfil     =  2.658e-4; % (m3) / (m3)
        Ix_perfil  =  5.298e-5;   Iy_perfil     =  1.784e-5; % (m4) / (m4)
        raiogx     =  0.0890;     raiogy        =  0.0516;   % (m) / (m)
        Alma_W     =  19.85;      Mesa_F        =  8.10;     % (h0/t0) / (b/2t)
        E_tw       =  7.9e-3;                                % (m)
        
    elseif x(i)==15 % perfil H 200 x 59.0  (W8x40)       /15
        
        d_perfil   =  0.210;      massa_perfil  =  59.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.205;      A_perfil      =  7.60e-3;  %  (m) / (m2)
        Zx_perfil  =  6.559e-4;   Zy_perfil     =  3.030e-4; % (m3) / (m3)
        Ix_perfil  =  6.140e-5;   Iy_perfil     =  2.041e-5; % (m4) / (m4)
        raiogx     =  0.0899;     raiogy        =  0.0518;   % (m) / (m)
        Alma_W     =  17.32;      Mesa_F        =  7.22;     % (h0/t0) / (b/2t)
        E_tw       =  9.1e-3;                                % (m)
        
    elseif x(i)==16 % perfil H 200 x 71.0  (W8x48)       /16
        
        d_perfil   =  0.216;      massa_perfil  =  71.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.206;      A_perfil      =  9.10e-3;  %  (m) / (m2)
        Zx_perfil  =  8.032e-4;   Zy_perfil     =  3.745e-4; % (m3) / (m3)
        Ix_perfil  =  7.660e-5;   Iy_perfil     =  2.537e-5; % (m4) / (m4)
        raiogx     =  0.0917;     raiogy        =  0.0528;   % (m) / (m)
        Alma_W     =  15.80;      Mesa_F        =  5.92;     % (h0/t0) / (b/2t)
        E_tw       =  10.2e-3;                               % (m)
        
    elseif x(i)==17 % perfil H 200 x 86.0  (W8x58)       /17
        
        d_perfil   =  0.222;      massa_perfil  =  86.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.209;      A_perfil      =  1.109e-2; %  (m) / (m2)
        Zx_perfil  =  9.842e-4;   Zy_perfil     =  4.587e-4; % (m3) / (m3)
        Ix_perfil  =  9.498e-5;   Iy_perfil     =  3.139e-5; % (m4) / (m4)
        raiogx     =  0.0926;     raiogy        =  0.0532;   % (m) / (m)
        Alma_W     =  12.06;      Mesa_F        =  5.07;     % (h0/t0) / (b/2t)
        E_tw       =  13.0e-3;                               % (m)
        
    elseif x(i)==18 % perfil I 250 x 17.9   (W10x12)  /18
        
        d_perfil   =  0.251;      massa_perfil  =  17.9;     %  (m) / (kg/m)
        Bf_perfil  =  0.101;      A_perfil      =  2.31e-3;  %  (m) / (m2)
        Zx_perfil  =  2.110e-4;   Zy_perfil     =  2.88e-5;  % (m3) / (m3)
        Ix_perfil  =  2.291e-5;   Iy_perfil     =  9.1e-7;   % (m4) / (m4)
        raiogx     =  0.0996;     raiogy        =  0.0199;   % (m) / (m)
        Alma_W     =  45.92;      Mesa_F        =  9.53;     % (h0/t0) / (b/2t)
        E_tw       =  4.8e-3;                                % (m)
        
    elseif x(i)==19 % perfil I 250 x 22.3   (W10x15)  /19
        
        d_perfil   =  0.254;      massa_perfil  =  22.3;     %  (m) / (kg/m)
        Bf_perfil  =  0.102;      A_perfil      =  2.89e-3;  %  (m) / (m2)
        Zx_perfil  =  2.677e-4;   Zy_perfil     =  3.84e-5;  % (m3) / (m3)
        Ix_perfil  =  2.939e-5;   Iy_perfil     =  1.23e-6;  % (m4) / (m4)
        raiogx     =  0.1009;     raiogy        =  0.0206;   % (m) / (m)
        Alma_W     =  37.97;      Mesa_F        =  7.39;     % (h0/t0) / (b/2t)
        E_tw       =  5.8e-3;                                % (m)
        
    elseif x(i)==20 % perfil I 250 x 25.3   (W10x17)  /20
        
        d_perfil   =  0.257;      massa_perfil  =  25.3;     %  (m) / (kg/m)
        Bf_perfil  =  0.102;      A_perfil      =  3.26e-3;  %  (m) / (m2)
        Zx_perfil  =  3.111e-4;   Zy_perfil     =  4.64e-5;  % (m3) / (m3)
        Ix_perfil  =  3.473e-5;   Iy_perfil     =  1.49e-6;  % (m4) / (m4)
        raiogx     =  0.1031;     raiogy        =  0.0214;   % (m) / (m)
        Alma_W     =  36.10;      Mesa_F        =  6.07;     % (h0/t0) / (b/2t)
        E_tw       =  6.1e-3;                                % (m)
        
    elseif x(i)==21 % perfil I 250 x 32.7   (W10x22)  /21
        
        d_perfil   =  0.258;      massa_perfil  =  32.7;     %  (m) / (kg/m)
        Bf_perfil  =  0.148;      A_perfil      =  4.21e-3;  %  (m) / (m2)
        Zx_perfil  =  4.285e-4;   Zy_perfil     =  9.97e-5;  % (m3) / (m3)
        Ix_perfil  =  4.937e-5;   Iy_perfil     =  4.73e-6;  % (m4) / (m4)
        raiogx     =  0.1083;     raiogy        =  0.0335;   % (m) / (m)
        Alma_W     =  36.03;      Mesa_F        =  8.02;     % (h0/t0) / (b/2t)
        E_tw       =  6.1e-3;                                % (m)
        
    elseif x(i)==22 % perfil I 250 x 38.5   (W10x26)   /22
        
        d_perfil   =  0.262;      massa_perfil  =  38.5;     %  (m) / (kg/m)
        Bf_perfil  =  0.147;      A_perfil      =  4.96e-3;  %  (m) / (m2)
        Zx_perfil  =  5.178e-4;   Zy_perfil     =  1.241e-4; % (m3) / (m3)
        Ix_perfil  =  6.057e-5;   Iy_perfil     =  5.94e-6;  % (m4) / (m4)
        raiogx     =  0.1105;     raiogy        =  0.0346;   % (m) / (m)
        Alma_W     =  33.27;      Mesa_F        =  6.56;     % (h0/t0) / (b/2t)
        E_tw       =  6.6e-3;                                % (m)
        
    elseif x(i)==23 % perfil I 250 x 44.8   (W10x30)   /23
        
        d_perfil   =  0.266;      massa_perfil  =  44.8;     %  (m) / (kg/m)
        Bf_perfil  =  0.148;      A_perfil      =  5.76e-3;  %  (m) / (m2)
        Zx_perfil  =  6.063e-4;   Zy_perfil     =  1.464e-4; % (m3) / (m3)
        Ix_perfil  =  7.158e-5;   Iy_perfil     =  7.04e-6;  % (m4) / (m4)
        raiogx     =  0.1115;     raiogy        =  0.0350;   % (m) / (m)
        Alma_W     =  28.95;      Mesa_F        =  5.69;     % (h0/t0) / (b/2t)
        E_tw       =  7.6e-3;                                % (m)
        
    elseif x(i)==24 % perfil H 250 x 73.0   (W10x49)    /24
        
        d_perfil   =  0.253;      massa_perfil  =  73.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.254;      A_perfil      =  9.27e-3;  %  (m) / (m2)
        Zx_perfil  =  9.833e-4;   Zy_perfil     =  4.631e-4; % (m3) / (m3)
        Ix_perfil  =  1.1257e-4;  Iy_perfil     =  3.880e-5; % (m4) / (m4)
        raiogx     =  0.1102;     raiogy        =  0.0647;   % (m) / (m)
        Alma_W     =  23.33;      Mesa_F        =  8.94;     % (h0/t0) / (b/2t)
        E_tw       =  8.6e-3;                                % (m)
        
    elseif x(i)==25 % perfil H 250 x 80.0   (W10x54)    /25
        
        d_perfil   =  0.256;      massa_perfil  =  80.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.255;      A_perfil      =  1.019e-2; %  (m) / (m2)
        Zx_perfil  =  1.0887e-3;  Zy_perfil     =  5.131e-4; % (m3) / (m3)
        Ix_perfil  =  1.2550e-4;  Iy_perfil     =  4.313e-5; % (m4) / (m4)
        raiogx     =  0.1110;     raiogy        =  0.0651;   % (m) / (m)
        Alma_W     =  21.36;      Mesa_F        =  8.17;     % (h0/t0) / (b/2t)
        E_tw       =  9.4e-3;                                % (m)
        
    elseif x(i)==26 % perfil H 250 x 89.0   (W10x60)    /26
        
        d_perfil   =  0.260;      massa_perfil  =  89.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.256;      A_perfil      =  1.139e-2; %  (m) / (m2)
        Zx_perfil  =  1.2244e-3;  Zy_perfil     =  5.743e-4; % (m3) / (m3)
        Ix_perfil  =  1.4237e-4;  Iy_perfil     =  4.841e-5; % (m4) / (m4)
        raiogx     =  0.1118;     raiogy        =  0.0652;   % (m) / (m)
        Alma_W     =  18.82;      Mesa_F        =  7.40;     % (h0/t0) / (b/2t)
        E_tw       =  10.7e-3;                               % (m)
        
    elseif x(i)==27 % perfil H 250 x 101.0   (W10x68)    /27
        
        d_perfil   =  0.264;      massa_perfil  =  101.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.257;      A_perfil      =  1.287e-2; %  (m) / (m2)
        Zx_perfil  =  1.3950e-3;  Zy_perfil     =  6.563e-4; % (m3) / (m3)
        Ix_perfil  =  1.6352e-4;  Iy_perfil     =  5.549e-5; % (m4) / (m4)
        raiogx     =  0.1127;     raiogy        =  0.0657;   % (m) / (m)
        Alma_W     =  16.87;      Mesa_F        =  6.56;     % (h0/t0) / (b/2t)
        E_tw       =  11.9e-3;                               % (m)
        
    elseif x(i)==28 % perfil H 250 x 115.0   (W10x77)    /28
        
        d_perfil   =  0.269;      massa_perfil  =  115.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.259;      A_perfil      =  1.461e-2; %  (m) / (m2)
        Zx_perfil  =  1.5974e-3;  Zy_perfil     =  7.527e-4; % (m3) / (m3)
        Ix_perfil  =  1.8920e-4;  Iy_perfil     =  6.405e-5; % (m4) / (m4)
        raiogx     =  0.1138;     raiogy        =  0.0662;   % (m) / (m)
        Alma_W     =  14.87;      Mesa_F        =  5.86;     % (h0/t0) / (b/2t)
        E_tw       =  13.5e-3;                               % (m)
        
    elseif x(i)==29 % perfil I 310 x 21.0   (W12x14)    /29
        
        d_perfil   =  0.303;      massa_perfil  =  21.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.101;      A_perfil      =  2.72e-3;  %  (m) / (m2)
        Zx_perfil  =  2.919e-4;   Zy_perfil     =  3.14e-5;  % (m3) / (m3)
        Ix_perfil  =  3.776e-5;   Iy_perfil     =  9.80e-7;  % (m4) / (m4)
        raiogx     =  0.1177;     raiogy        =  0.0190;   % (m) / (m)
        Alma_W     =  53.25;      Mesa_F        =  8.86;     % (h0/t0) / (b/2t)
        E_tw       =  5.1e-3;                                % (m)
        
    elseif x(i)==30 % perfil I 310 x 28.3   (W12x19)    /30
        
        d_perfil   =  0.309;      massa_perfil  =  28.3;     %  (m) / (kg/m)
        Bf_perfil  =  0.102;      A_perfil      =  3.65e-3;  %  (m) / (m2)
        Zx_perfil  =  4.120e-4;   Zy_perfil     =  4.94e-5;  % (m3) / (m3)
        Ix_perfil  =  5.500e-5;   Iy_perfil     =  1.58e-6;  % (m4) / (m4)
        raiogx     =  0.1228;     raiogy        =  0.0208;   % (m) / (m)
        Alma_W     =  45.20;      Mesa_F        =  5.73;     % (h0/t0) / (b/2t)
        E_tw       =  6.0e-3;                                % (m)
        
    elseif x(i)==31 % perfil I 310 x 32.7   (W12x22)    /31
        
        d_perfil   =  0.313;      massa_perfil  =  32.7;     %  (m) / (kg/m)
        Bf_perfil  =  0.102;      A_perfil      =  4.21e-3;  %  (m) / (m2)
        Zx_perfil  =  4.853e-4;   Zy_perfil     =  5.98e-5;  % (m3) / (m3)
        Ix_perfil  =  6.570e-5;   Iy_perfil     =  1.92e-6;  % (m4) / (m4)
        raiogx     =  0.1249;     raiogy        =  0.0213;   % (m) / (m)
        Alma_W     =  41.12;      Mesa_F        =  4.72;     % (h0/t0) / (b/2t)
        E_tw       =  6.6e-3;                                % (m)
        
    elseif x(i)==32 % perfil I 310 x 38.7   (W12x26)    /32
        
        d_perfil   =  0.310;      massa_perfil  =  38.7;     %  (m) / (kg/m)
        Bf_perfil  =  0.165;      A_perfil      =  4.97e-3;  %  (m) / (m2)
        Zx_perfil  =  6.154e-4;   Zy_perfil     =  1.349e-4; % (m3) / (m3)
        Ix_perfil  =  8.581e-5;   Iy_perfil     =  7.27e-6;  % (m4) / (m4)
        raiogx     =  0.1314;     raiogy        =  0.0382;   % (m) / (m)
        Alma_W     =  46.66;      Mesa_F        =  8.51;     % (h0/t0) / (b/2t)
        E_tw       =  5.8e-3;                                % (m)
        
    elseif x(i)==33 % perfil I 310 x 44.5   (W12x30)     /33
        
        d_perfil   =  0.313;      massa_perfil  =  44.5;     %  (m) / (kg/m)
        Bf_perfil  =  0.166;      A_perfil      =  5.72e-3;  %  (m) / (m2)
        Zx_perfil  =  7.128e-4;   Zy_perfil     =  1.58e-4;  % (m3) / (m3)
        Ix_perfil  =  9.997e-5;   Iy_perfil     =  8.55e-6;  % (m4) / (m4)
        raiogx     =  0.1322;     raiogy        =  0.0387;   % (m) / (m)
        Alma_W     =  41.00;      Mesa_F        =  7.41;     % (h0/t0) / (b/2t)
        E_tw       =  6.6e-3;                                % (m)
        
    elseif x(i)==34 % perfil I 310 x 52.0   (W12x35)     /34
        
        d_perfil   =  0.317;      massa_perfil  =  52.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.167;      A_perfil      =  6.70e-3;  %  (m) / (m2)
        Zx_perfil  =  8.425e-4;   Zy_perfil     =  1.88e-4;  % (m3) / (m3)
        Ix_perfil  =  1.1909e-4;  Iy_perfil     =  1.026e-5; % (m4) / (m4)
        raiogx     =  0.1333;     raiogy        =  0.0391;   % (m) / (m)
        Alma_W     =  35.61;      Mesa_F        =  6.33;     % (h0/t0) / (b/2t)
        E_tw       =  7.6e-3;                                % (m)
        
    elseif x(i)==35 % perfil H 310 x 97.0   (W12x65)     /35
        
        d_perfil   =  0.308;      massa_perfil  =  97.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.305;      A_perfil      =  1.236e-2; %  (m) / (m2)
        Zx_perfil  =  1.5942e-3;  Zy_perfil     =  7.25e-4;  % (m3) / (m3)
        Ix_perfil  =  2.2284e-4;  Iy_perfil     =  7.286e-5; % (m4) / (m4)
        raiogx     =  0.1343;     raiogy        =  0.0768;   % (m) / (m)
        Alma_W     =  24.77;      Mesa_F        =  9.90;     % (h0/t0) / (b/2t)
        E_tw       =  9.9e-3;                                % (m)
        
    elseif x(i)==36 % perfil H 310 x 107.0   (W12x72)     /36
        
        d_perfil   =  0.311;      massa_perfil  =  107.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.306;      A_perfil      =  1.364e-2; %  (m) / (m2)
        Zx_perfil  =  1.7682e-3;  Zy_perfil     =  8.061e-4; % (m3) / (m3)
        Ix_perfil  =  2.4839e-4;  Iy_perfil     =  8.123e-5; % (m4) / (m4)
        raiogx     =  0.1349;     raiogy        =  0.0772;   % (m) / (m)
        Alma_W     =  22.48;      Mesa_F        =  9.00;     % (h0/t0) / (b/2t)
        E_tw       =  10.9e-3;                               % (m)
        
    elseif x(i)==37 % perfil H 310 x 117.0   (W12x79)     /37
        
        d_perfil   =  0.314;      massa_perfil  =  117.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.307;      A_perfil      =  1.499e-2; %  (m) / (m2)
        Zx_perfil  =  1.9526e-3;  Zy_perfil     =  8.931e-4; % (m3) / (m3)
        Ix_perfil  =  2.7563e-4;  Iy_perfil     =  9.024e-5; % (m4) / (m4)
        raiogx     =  0.1356;     raiogy        =  0.0776;   % (m) / (m)
        Alma_W     =  20.55;      Mesa_F        =  8.21;     % (h0/t0) / (b/2t)
        E_tw       =  11.9e-3;                               % (m)
        
    elseif x(i)==38 % perfil I 360 x 32.9    (W14x22)     /38
        
        d_perfil   =  0.349;      massa_perfil  =  32.9;     %  (m) / (kg/m)
        Bf_perfil  =  0.127;      A_perfil      =  4.21e-3;  %  (m) / (m2)
        Zx_perfil  =  5.476e-4;   Zy_perfil     =  7.2e-5;   % (m3) / (m3)
        Ix_perfil  =  8.358e-5;   Iy_perfil     =  2.91e-6;  % (m4) / (m4)
        raiogx     =  0.1409;     raiogy        =  0.0263;   % (m) / (m)
        Alma_W     =  53.10;      Mesa_F        =  7.47;     % (h0/t0) / (b/2t)
        E_tw       =  5.8e-3;                                % (m)
        
    elseif x(i)==39 % perfil I 360 x 39.0     (W14x26)     /39
        
        d_perfil   =  0.353;      massa_perfil  =  39.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.128;      A_perfil      =  5.02e-3;  %  (m) / (m2)
        Zx_perfil  =  6.677e-4;   Zy_perfil     =  9.19e-5;  % (m3) / (m3)
        Ix_perfil  =  1.0331e-4;  Iy_perfil     =  3.75e-6;  % (m4) / (m4)
        raiogx     =  0.1435;     raiogy        =  0.0273;   % (m) / (m)
        Alma_W     =  47.32;      Mesa_F        =  5.98;     % (h0/t0) / (b/2t)
        E_tw       =  6.5e-3;                                % (m)
        
    elseif x(i)==40 % perfil I 360 x 44.6     (W14x30)     /40
        
        d_perfil   =  0.352;      massa_perfil  =  44.6;     %  (m) / (kg/m)
        Bf_perfil  =  0.171;      A_perfil      =  5.77e-3;  %  (m) / (m2)
        Zx_perfil  =  7.843e-4;   Zy_perfil     =  1.480e-4; % (m3) / (m3)
        Ix_perfil  =  1.2258e-4;  Iy_perfil     =  8.18e-6;  % (m4) / (m4)
        raiogx     =  0.1458;     raiogy        =  0.0377;   % (m) / (m)
        Alma_W     =  44.70;      Mesa_F        =  8.72;     % (h0/t0) / (b/2t)
        E_tw       =  6.9e-3;                                % (m)
        
    elseif x(i)==41 % perfil I 360 x 51.0     (W14x34)     /41
        
        d_perfil   =  0.355;      massa_perfil  =  51.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.171;      A_perfil      =  6.48e-3;  %  (m) / (m2)
        Zx_perfil  =  8.995e-4;   Zy_perfil     =  1.747e-4; % (m3) / (m3)
        Ix_perfil  =  1.4222e-4;  Iy_perfil     =  9.68e-6;  % (m4) / (m4)
        raiogx     =  0.1481;     raiogy        =  0.0387;   % (m) / (m)
        Alma_W     =  42.75;      Mesa_F        =  7.37;     % (h0/t0) / (b/2t)
        E_tw       =  7.2e-3;                                % (m)
        
    elseif x(i)==42 % perfil I 360 x 58.0     (W14x38)     /42
        
        d_perfil   =  0.358;      massa_perfil  =  58.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.172;      A_perfil      =  7.25e-3;  %  (m) / (m2)
        Zx_perfil  =  1.0148e-3;  Zy_perfil     =  1.998e-4; % (m3) / (m3)
        Ix_perfil  =  1.6143e-4;  Iy_perfil     =  1.113e-5; % (m4) / (m4)
        raiogx     =  0.1492;     raiogy        =  0.0392;   % (m) / (m)
        Alma_W     =  38.96;      Mesa_F        =  6.56;     % (h0/t0) / (b/2t)
        E_tw       =  7.9e-3;                                % (m)
        
    elseif x(i)==43 % perfil I 360 x 64.0     (W14x43)     /43
        
        d_perfil   =  0.347;      massa_perfil  =  64.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.203;      A_perfil      =  8.17e-3;  %  (m) / (m2)
        Zx_perfil  =  1.1455e-3;  Zy_perfil     =  2.845e-4; % (m3) / (m3)
        Ix_perfil  =  1.7890e-4;  Iy_perfil     =  1.885e-5; % (m4) / (m4)
        raiogx     =  0.1480;     raiogy        =  0.0480;   % (m) / (m)
        Alma_W     =  37.40;      Mesa_F        =  7.52;     % (h0/t0) / (b/2t)
        E_tw       =  7.7e-3;                                % (m)
        
    elseif x(i)==44 % perfil I 360 x 72.0     (W14x48)     /44
        
        d_perfil   =  0.350;      massa_perfil  =  72.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.204;      A_perfil      =  9.13e-3;  %  (m) / (m2)
        Zx_perfil  =  1.2859e-3;  Zy_perfil     =  3.218e-4; % (m3) / (m3)
        Ix_perfil  =  2.0169e-4;   Iy_perfil     =  2.140e-5; % (m4) / (m4)
        raiogx     =  0.1486;     raiogy        =  0.0484;   % (m) / (m)
        Alma_W     =  33.47;      Mesa_F        =  6.75;     % (h0/t0) / (b/2t)
        E_tw       =  8.6e-3;                                % (m)
        
    elseif x(i)==45 % perfil I 360 x 79.0     (W14x53)     /45
        
        d_perfil   =  0.354;      massa_perfil  =  79.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.205;      A_perfil      =  1.012e-2; %  (m) / (m2)
        Zx_perfil  =  1.4370e-3;  Zy_perfil     =  3.619e-4; % (m3) / (m3)
        Ix_perfil  =  2.2713e-4;   Iy_perfil     =  2.416e-5; % (m4) / (m4)
        raiogx     =  0.1498;     raiogy        =  0.0489;   % (m) / (m)
        Alma_W     =  30.68;      Mesa_F        =  6.10;     % (h0/t0) / (b/2t)
        E_tw       =  9.4e-3;                                % (m)
        
    elseif x(i)==46 % perfil H 360 x 91.0     (W14x61)     /46
        
        d_perfil   =  0.353;      massa_perfil  =  91.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.254;      A_perfil      =  1.159e-2; %  (m) / (m2)
        Zx_perfil  =  1.6801e-3;  Zy_perfil     =  5.381e-4; % (m3) / (m3)
        Ix_perfil  =  2.6755e-4;   Iy_perfil     =  4.483e-5; % (m4) / (m4)
        raiogx     =  0.1519;     raiogy        =  0.0622;   % (m) / (m)
        Alma_W     =  30.34;      Mesa_F        =  7.74;     % (h0/t0) / (b/2t)
        E_tw       =  9.5e-3;                                % (m)
        
    elseif x(i)==47 % perfil H 360 x 101.0     (W14x68)     /47
        
        d_perfil   =  0.357;      massa_perfil  =  101.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.255;      A_perfil      =  1.295e-2; %  (m) / (m2)
        Zx_perfil  =  1.8889e-3;  Zy_perfil     =  6.061e-4; % (m3) / (m3)
        Ix_perfil  =  3.0279e-4;  Iy_perfil     =  5.063e-5; % (m4) / (m4)
        raiogx     =  0.1529;     raiogy        =  0.0625;   % (m) / (m)
        Alma_W     =  27.28;      Mesa_F        =  6.97;     % (h0/t0) / (b/2t)
        E_tw       =  10.5e-3;                               % (m)
        
    elseif x(i)==48 % perfil H 360 x 110.0     (W14x74)     /48
        
        d_perfil   =  0.360;      massa_perfil  =  110.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.256;      A_perfil      =  1.406e-2; %  (m) / (m2)
        Zx_perfil  =  2.0593e-3;  Zy_perfil     =  6.645e-4; % (m3) / (m3)
        Ix_perfil  =  3.3155e-4;  Iy_perfil     =  5.570e-5; % (m4) / (m4)
        raiogx     =  0.1536;     raiogy        =  0.0629;   % (m) / (m)
        Alma_W     =  25.28;      Mesa_F        =  6.43;     % (h0/t0) / (b/2t)
        E_tw       =  11.4e-3;                               % (m)
        
    elseif x(i)==49 % perfil H 360 x 122.0     (W14x82)     /49
        
        d_perfil   =  0.363;      massa_perfil  =  122.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.257;      A_perfil      =  1.553e-2; %  (m) / (m2)
        Zx_perfil  =  2.2698e-3;  Zy_perfil     =  7.324e-4; % (m3) / (m3)
        Ix_perfil  =  3.6599e-4;  Iy_perfil     =  6.147e-5; % (m4) / (m4)
        raiogx     =  0.1535;     raiogy        =  0.0629;   % (m) / (m)
        Alma_W     =  22.12;      Mesa_F        =  5.92;     % (h0/t0) / (b/2t)
        E_tw       =  13.0e-3;                               % (m)
        
    elseif x(i)==50 % perfil I 410 x 38.8      (W16x26)     /50
        
        d_perfil   =  0.399;      massa_perfil  =  38.8;     %  (m) / (kg/m)
        Bf_perfil  =  0.140;      A_perfil      =  5.03e-3;  %  (m) / (m2)
        Zx_perfil  =  7.368e-4;   Zy_perfil     =  9.09e-5;  % (m3) / (m3)
        Ix_perfil  =  1.2777e-4;  Iy_perfil     =  4.04e-6;  % (m4) / (m4)
        raiogx     =  0.1594;     raiogy        =  0.0283;   % (m) / (m)
        Alma_W     =  55.84;      Mesa_F        =  7.95;     % (h0/t0) / (b/2t)
        E_tw       =  6.4e-3;                                % (m)
        
    elseif x(i)==51 % perfil I 410 x 60.0      (W16x40)     /51
        
        d_perfil   =  0.407;      massa_perfil  =  60.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.178;      A_perfil      =  7.62e-3;  %  (m) / (m2)
        Zx_perfil  =  1.2015e-3;  Zy_perfil     =  2.092e-4; % (m3) / (m3)
        Ix_perfil  =  2.1707e-4;  Iy_perfil     =  1.205e-5; % (m4) / (m4)
        raiogx     =  0.1688;     raiogy        =  0.0398;   % (m) / (m)
        Alma_W     =  46.42;      Mesa_F        =  6.95;     % (h0/t0) / (b/2t)
        E_tw       =  7.7e-3;                                % (m)
        
    elseif x(i)==52 % perfil I 460 x 52.0      (W18x35)     /52
        
        d_perfil   =  0.450;      massa_perfil  =  52.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.152;      A_perfil      =  6.66e-3;  %  (m) / (m2)
        Zx_perfil  =  1.0959e-3;  Zy_perfil     =  1.317e-4; % (m3) / (m3)
        Ix_perfil  =  2.1370e-4;  Iy_perfil     =  6.34e-6;  % (m4) / (m4)
        raiogx     =  0.1791;     raiogy        =  0.0309;   % (m) / (m)
        Alma_W     =  53.21;      Mesa_F        =  7.04;     % (h0/t0) / (b/2t)
        E_tw       =  7.6e-3;                                % (m)
        
    elseif x(i)==53 % perfil I 460 x 89.0      (W18x60)     /53
        
        d_perfil   =  0.463;      massa_perfil  =  89.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.192;      A_perfil      =  1.141e-2; %  (m) / (m2)
        Zx_perfil  =  2.0194e-3;  Zy_perfil     =  3.390e-4; % (m3) / (m3)
        Ix_perfil  =  4.1105e-4;  Iy_perfil     =  2.093e-5; % (m4) / (m4)
        raiogx     =  0.1898;     raiogy        =  0.0428;   % (m) / (m)
        Alma_W     =  38.44;      Mesa_F        =  5.42;     % (h0/t0) / (b/2t)
        E_tw       =  10.5e-3;                               % (m)
        
    elseif x(i)==54 % perfil I 530 x 66.0       (W21x44)     /54
        
        d_perfil   =  0.525;      massa_perfil  =  66.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.165;      A_perfil      =  8.36e-3;  %  (m) / (m2)
        Zx_perfil  =  1.558e-3;   Zy_perfil     =  1.66e-4;  % (m3) / (m3)
        Ix_perfil  =  3.4971e-4;  Iy_perfil     =  8.57e-6;  % (m4) / (m4)
        raiogx     =  0.2046;     raiogy        =  0.0320;   % (m) / (m)
        Alma_W     =  53.73;      Mesa_F        =  7.24;     % (h0/t0) / (b/2t)
        E_tw       =  8.9e-3;                                % (m)
        
    elseif x(i)==55 % perfil I 530 x 74.0       (W21x50)     /55
        
        d_perfil   =  0.529;      massa_perfil  =  74.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.166;      A_perfil      =  9.51e-3;  %  (m) / (m2)
        Zx_perfil  =  1.8049e-3;  Zy_perfil     =  2.001e-4; % (m3) / (m3)
        Ix_perfil  =  4.0969e-4;  Iy_perfil     =  1.041e-5; % (m4) / (m4)
        raiogx     =  0.2076;     raiogy        =  0.0331;   % (m) / (m)
        Alma_W     =  49.26;      Mesa_F        =  6.10;     % (h0/t0) / (b/2t)
        E_tw       =  9.7e-3;                                % (m)
        
    elseif x(i)==56 % perfil I 530 x 82.0       (W21x55)     /56
        
        d_perfil   =  0.528;      massa_perfil  =  82.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.209;      A_perfil      =  1.045e-2; %  (m) / (m2)
        Zx_perfil  =  2.0585e-3;  Zy_perfil     =  3.027e-4; % (m3) / (m3)
        Ix_perfil  =  4.7569e-4;  Iy_perfil     =  2.028e-5; % (m4) / (m4)
        raiogx     =  0.2134;     raiogy        =  0.0441;   % (m) / (m)
        Alma_W     =  50.25;      Mesa_F        =  7.86;     % (h0/t0) / (b/2t)
        E_tw       =  9.5e-3;                                % (m)
        
    elseif x(i)==57 % perfil I 530 x 92.0       (W21x62)     /57
        
        d_perfil   =  0.533;      massa_perfil  =  92.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.209;      A_perfil      =  1.176e-2; %  (m) / (m2)
        Zx_perfil  =  2.3598e-3;  Zy_perfil     =  3.547e-4; % (m3) / (m3)
        Ix_perfil  =  5.5157e-4;  Iy_perfil     =  2.379e-5; % (m4) / (m4)
        raiogx     =  0.2165;     raiogy        =  0.0450;   % (m) / (m)
        Alma_W     =  46.84;      Mesa_F        =  6.70;     % (h0/t0) / (b/2t)
        E_tw       =  10.2e-3;                               % (m)
        
    elseif x(i)==58 % perfil I 530 x 109.0       (W21x73)     /58
        
        d_perfil   =  0.539;      massa_perfil  =  109.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.211;      A_perfil      =  1.397e-2; %  (m) / (m2)
        Zx_perfil  =  2.8470e-3;  Zy_perfil     =  4.374e-4; % (m3) / (m3)
        Ix_perfil  =  6.7226e-4;  Iy_perfil     =  2.952e-5; % (m4) / (m4)
        raiogx     =  0.2194;     raiogy        =  0.0460;   % (m) / (m)
        Alma_W     =  40.47;      Mesa_F        =  5.61;     % (h0/t0) / (b/2t)
        E_tw       =  11.6e-3;                               % (m)
        
    elseif x(i)==59 % perfil I 610 x 101.0        (W24x68)     /59
        
        d_perfil   =  0.603;      massa_perfil  =  101.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.228;      A_perfil      =  1.303e-2; %  (m) / (m2)
        Zx_perfil  =  2.9227e-3;  Zy_perfil     =  4.050e-5; % (m3) / (m3)
        Ix_perfil  =  7.7003e-4;  Iy_perfil     =  2.951e-5; % (m4) / (m4)
        raiogx     =  0.2431;     raiogy        =  0.0476;   % (m) / (m)
        Alma_W     =  51.54;      Mesa_F        =  7.65;     % (h0/t0) / (b/2t)
        E_tw       =  10.5e-3;                               % (m)
        
    elseif x(i)==60 % perfil I 610 x 113.0        (W24x76)     /60
        
        d_perfil   =  0.608;      massa_perfil  =  113.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.228;      A_perfil      =  1.453e-2; %  (m) / (m2)
        Zx_perfil  =  3.3129e-3;  Zy_perfil     =  4.697e-5; % (m3) / (m3)
        Ix_perfil  =  8.8196e-4;  Iy_perfil     =  3.426e-5; % (m4) / (m4)
        raiogx     =  0.2464;     raiogy        =  0.0486;   % (m) / (m)
        Alma_W     =  48.34;      Mesa_F        =  6.59;     % (h0/t0) / (b/2t)
        E_tw       =  11.2e-3;                               % (m)
        
    elseif x(i)==61 % perfil I 610 x 125.0        (W24x84)     /61
        
        d_perfil   =  0.612;      massa_perfil  =  125.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.229;      A_perfil      =  1.601e-2; %  (m) / (m2)
        Zx_perfil  =  3.6973e-3;  Zy_perfil     =  5.363e-5; % (m3) / (m3)
        Ix_perfil  =  9.9184e-4;  Iy_perfil     =  3.933e-5; % (m4) / (m4)
        raiogx     =  0.2489;     raiogy        =  0.0496;   % (m) / (m)
        Alma_W     =  45.45;      Mesa_F        =  5.84;     % (h0/t0) / (b/2t)
        E_tw       =  11.9e-3;                               % (m)
        
    elseif x(i)==62 % perfil I 610 x 140.0        (W24x94)     /62
        
        d_perfil   =  0.617;      massa_perfil  =  140.0;    %  (m) / (kg/m)
        Bf_perfil  =  0.230;      A_perfil      =  1.793e-2; %  (m) / (m2)
        Zx_perfil  =  4.1731e-3;  Zy_perfil     =  6.140e-5; % (m3) / (m3)
        Ix_perfil  =  1.1262e-3;  Iy_perfil     =  4.515e-5; % (m4) / (m4)
        raiogx     =  0.2506;     raiogy        =  0.0502;   % (m) / (m)
        Alma_W     =  41.27;      Mesa_F        =  5.18;     % (h0/t0) / (b/2t)
        E_tw       =  13.1e-3;                               % (m)
        
    elseif x(i)==63 % perfil I 610 x 155.0        (W24x104)     /63
        
        d_perfil   =  0.611;      massa_perfil  =  155.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.324;      A_perfil      =  1.981e-2;  %  (m) / (m2)
        Zx_perfil  =  4.7491e-3;  Zy_perfil     =  1.0226e-4; % (m3) / (m3)
        Ix_perfil  =  1.2958e-3;  Iy_perfil     =  1.0783e-4; % (m4) / (m4)
        raiogx     =  0.2558;     raiogy        =  0.0738;    % (m) / (m)
        Alma_W     =  42.60;      Mesa_F        =  8.53;      % (h0/t0) / (b/2t)
        E_tw       =  12.7e-3;                                % (m)
        
    elseif x(i)==64 % perfil I 610 x 174.0        (W24x117)     /64
        
        d_perfil   =  0.616;      massa_perfil  =  174.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.325;      A_perfil      =  2.228e-2;  %  (m) / (m2)
        Zx_perfil  =  5.3833e-3;  Zy_perfil     =  1.1711e-4; % (m3) / (m3)
        Ix_perfil  =  1.4775e-3;  Iy_perfil     =  1.2374e-4; % (m4) / (m4)
        raiogx     =  0.2575;     raiogy        =  0.0745;    % (m) / (m)
        Alma_W     =  38.63;      Mesa_F        =  7.52;      % (h0/t0) / (b/2t)
        E_tw       =  14.0e-3;                                % (m)
        
        %% Perfis CVS para Vigas e Colunas.
        
    elseif x(i)==65   % perfil CVS 650 x 461      /65
        
        d_perfil   =  0.650;      massa_perfil  =  416.2;     %  (m) / (kg/m)
        Bf_perfil  =  0.450;      A_perfil      =  5.875e-2;  %  (m) / (m2)
        Zx_perfil  =  15.391e-3;  Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  44.0599e-4; Iy_perfil     =  7.6009e-4; % (m4) / (m4)
        raiogx     =  0.2739;     raiogy        =  0.1137;    % (m) / (m)
        Alma_W     =  22.0;       Mesa_F        =  4.50;      % (h0/t0) / (b/2t)
        E_tw       =  25.0e-3;                                % (m)
        
    elseif x(i)==66 % perfil CVS 650 x 416    /66
        
        d_perfil   =  0.650;      massa_perfil  =  416.4;     %  (m) / (kg/m)
        Bf_perfil  =  0.450;      A_perfil      =  5.304e-2;  %  (m) / (m2)
        Zx_perfil  =  14.007e-3;  Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  40.4065-4;  Iy_perfil     =  6.8396e-4; % (m4) / (m4)
        raiogx     =  0.2760;     raiogy        =  0.1136;    % (m) / (m)
        Alma_W     =  25.0;       Mesa_F        =  5.00;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==67 % perfil CVS 650 x 366     /67
        
        d_perfil   =  0.650;      massa_perfil  =  366.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.450;      A_perfil      =  4.663e-2;  %  (m) / (m2)
        Zx_perfil  =  12.187e-3;  Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  35.2421e-4; Iy_perfil     =  5.7007e-4; % (m4) / (m4)
        raiogx     =  0.2749;     raiogy        =  0.1106;    % (m) / (m)
        Alma_W     =  25.7;       Mesa_F        =  6.00;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==68 % perfil CVS 650 x 351     /68
        
        d_perfil   =  0.650;      massa_perfil  =  350.7;     %  (m) / (kg/m)
        Bf_perfil  =  0.450;      A_perfil      =  4.468e-2;  %  (m) / (m2)
        Zx_perfil  =  11.906e-3;  Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  34.7034e-4; Iy_perfil     =  5.6986e-4; % (m4) / (m4)
        raiogx     =  0.2787;     raiogy        =  0.1129;    % (m) / (m)
        Alma_W     =  30.3;       Mesa_F        =  6.00;      % (h0/t0) / (b/2t)
        E_tw       =  19.0e-3;                                % (m)
        
    elseif x(i)==69 % perfil CVS 650 x 326     /69
        
        d_perfil   =  0.650;      massa_perfil  =  325.8;     %  (m) / (kg/m)
        Bf_perfil  =  0.450;      A_perfil      =  4.150e-2;  %  (m) / (m2)
        Zx_perfil  =  10.697e-3;  Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  30.9117e-4; Iy_perfil     =  4.7896e-4; % (m4) / (m4)
        raiogx     =  0.2729;     raiogy        =  0.1074;    % (m) / (m)
        Alma_W     =  26.2;       Mesa_F        =  7.10;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==70 % perfil CVS 650 x 310     /70
        
        d_perfil   =  0.650;      massa_perfil  =  310.1;     %  (m) / (kg/m)
        Bf_perfil  =  0.450;      A_perfil      =  3.950e-2;  %  (m) / (m2)
        Zx_perfil  =  10.404e-3;  Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  30.3386e-4; Iy_perfil     =  4.7874e-4; % (m4) / (m4)
        raiogx     =  0.2771;     raiogy        =  0.1101;    % (m) / (m)
        Alma_W     =  30.9;       Mesa_F        =  7.10;      % (h0/t0) / (b/2t)
        E_tw       =  19.0e-3;                                % (m)
        
    elseif x(i)==71 % perfil CVS 650 x 282     /71
        
        d_perfil   =  0.650;      massa_perfil  =  282.1;     %  (m) / (kg/m)
        Bf_perfil  =  0.450;      A_perfil      =  3.594e-2;  %  (m) / (m2)
        Zx_perfil  =  9.047e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  26.0164e-4; Iy_perfil     =  3.8025e-4; % (m4) / (m4)
        raiogx     =  0.2691;     raiogy        =  0.1029;    % (m) / (m)
        Alma_W     =  26.8;       Mesa_F        =  9.80;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==72 % perfil CVS 650 x 266     /72
        
        d_perfil   =  0.650;      massa_perfil  =  266.1;     %  (m) / (kg/m)
        Bf_perfil  =  0.450;      A_perfil      =  3.390e-2;  %  (m) / (m2)
        Zx_perfil  =  8.741e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  25.4044e-4; Iy_perfil     =  3.8003e-4; % (m4) / (m4)
        raiogx     =  0.2738;     raiogy        =  0.1059;    % (m) / (m)
        Alma_W     =  31.6;       Mesa_F        =  9.00;      % (h0/t0) / (b/2t)
        E_tw       =  19.0e-3;                                % (m)
        
    elseif x(i)==73 % perfil CVS 650 x 252     /73
        
        d_perfil   =  0.650;      massa_perfil  =  252.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.450;      A_perfil      =  3.210e-2;  %  (m) / (m2)
        Zx_perfil  =  8.471e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  24.8644e-4; Iy_perfil     =  3.7989e-4; % (m4) / (m4)
        raiogx     =  0.2783;     raiogy        =  0.1088;    % (m) / (m)
        Alma_W     =  37.5;       Mesa_F        =  9.00;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==74 % perfil CVS 650 x 234     /74
        
        d_perfil   =  0.650;      massa_perfil  =  234.3;     %  (m) / (kg/m)
        Bf_perfil  =  0.450;      A_perfil      =  2.984e-2;  %  (m) / (m2)
        Zx_perfil  =  7.791e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  22.8156e-4; Iy_perfil     =  3.4041e-4; % (m4) / (m4)
        raiogx     =  0.2765;     raiogy        =  0.1068;    % (m) / (m)
        Alma_W     =  37.8;       Mesa_F        =  10.0;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==75 % perfil CVS 650 x 211     /75
        
        d_perfil   =  0.650;      massa_perfil  =  211.1;     %  (m) / (kg/m)
        Bf_perfil  =  0.450;      A_perfil      =  2.689e-2;  %  (m) / (m2)
        Zx_perfil  =  6.893e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  20.0828e-4; Iy_perfil     =  2.8877e-4; % (m4) / (m4)
        raiogx     =  0.2733;     raiogy        =  0.1036;    % (m) / (m)
        Alma_W     =  38.3;       Mesa_F        =  11.8;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==76 % perfil CVS 600 x 412     /76
        
        d_perfil   =  0.600;      massa_perfil  =  412.1;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  5.250e-2;  %  (m) / (m2)
        Zx_perfil  =  12.563e-3;  Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  32.9375e-4; Iy_perfil     =  5.3398e-4; % (m4) / (m4)
        raiogx     =  0.2505;     raiogy        =  0.1009;    % (m) / (m)
        Alma_W     =  20.0;       Mesa_F        =  4.00;      % (h0/t0) / (b/2t)
        E_tw       =  25.0e-3;                                % (m)
        
    elseif x(i)==77 % perfil CVS 600 x 372     /77
        
        d_perfil   =  0.600;      massa_perfil  =  372.3;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  4.742e-2;  %  (m) / (m2)
        Zx_perfil  =  11.447e-3;  Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  30.2592e-4; Iy_perfil     =  4.8048e-4; % (m4) / (m4)
        raiogx     =  0.2526;     raiogy        =  0.1007;    % (m) / (m)
        Alma_W     =  28.8;       Mesa_F        =  4.40;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==78 % perfil CVS 600 x 339     /78
        
        d_perfil   =  0.600;      massa_perfil  =  338.5;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  4.313e-2;  %  (m) / (m2)
        Zx_perfil  =  10.160e-3;  Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  26.7803e-4; Iy_perfil     =  4.0068e-4; % (m4) / (m4)
        raiogx     =  0.2492;     raiogy        =  0.0964;    % (m) / (m)
        Alma_W     =  21.0;       Mesa_F        =  5.30;      % (h0/t0) / (b/2t)
        E_tw       =  25.0e-3;                                % (m)
        
    elseif x(i)==79 % perfil CVS 600 x 328     /79
        
        d_perfil   =  0.600;      massa_perfil  =  327.8;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  4.176e-2;  %  (m) / (m2)
        Zx_perfil  =  9.981e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  26.4668e-4; Iy_perfil     =  4.0049e-4; % (m4) / (m4)
        raiogx     =  0.2518;     raiogy        =  0.0979;    % (m) / (m)
        Alma_W     =  23.4;       Mesa_F        =  5.30;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==80 % perfil CVS 600 x 292     /80
        
        d_perfil   =  0.600;      massa_perfil  =  292.2;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  3.723e-2;  %  (m) / (m2)
        Zx_perfil  =  8.778e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  23.2726e-4; Iy_perfil     =  3.3650e-4; % (m4) / (m4)
        raiogx     =  0.2500;     raiogy        =  0.0951;    % (m) / (m)
        Alma_W     =  24.0;       Mesa_F        =  6.30;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==81 % perfil CVS 600 x 278     /81
        
        d_perfil   =  0.600;      massa_perfil  =  277.9;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  3.540e-2;  %  (m) / (m2)
        Zx_perfil  =  8.533e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  22.8338e-4; Iy_perfil     =  3.3631e-4; % (m4) / (m4)
        raiogx     =  0.2540;     raiogy        =  0.0975;    % (m) / (m)
        Alma_W     =  28.3;       Mesa_F        =  6.30;      % (h0/t0) / (b/2t)
        E_tw       =  19.0e-3;                                % (m)
        
    elseif x(i)==82 % perfil CVS 600 x 239     /82
        
        d_perfil   =  0.600;      massa_perfil  =  239.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  3.045e-2;  %  (m) / (m2)
        Zx_perfil  =  7.187e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  19.1759e-4; Iy_perfil     =  2.6698e-4; % (m4) / (m4)
        raiogx     =  0.2509;     raiogy        =  0.0936;    % (m) / (m)
        Alma_W     =  28.9;       Mesa_F        =  8.00;      % (h0/t0) / (b/2t)
        E_tw       =  19.0e-3;                                % (m)
        
    elseif x(i)==83 % perfil CVS 600 x 226     /83
        
        d_perfil   =  0.600;      massa_perfil  =  226.1;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  2.880e-2;  %  (m) / (m2)
        Zx_perfil  =  6.960e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  18.7600e-4; Iy_perfil     =  2.6685e-4; % (m4) / (m4)
        raiogx     =  0.2552;     raiogy        =  0.0963;    % (m) / (m)
        Alma_W     =  34.4;       Mesa_F        =  8.00;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==84 % perfil CVS 600 x 210     /84
        
        d_perfil   =  0.600;      massa_perfil  =  210.4;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  2.680e-2;  %  (m) / (m2)
        Zx_perfil  =  6.408e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  17.2356e-4; Iy_perfil     =  2.3912e-2; % (m4) / (m4)
        raiogx     =  0.2536;     raiogy        =  0.0945;    % (m) / (m)
        Alma_W     =  34.7;       Mesa_F        =  8.90;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==85 % perfil CVS 600 x 190     /85
        
        d_perfil   =  0.600;      massa_perfil  =  2189.9;    %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  2.419e-2;  %  (m) / (m2)
        Zx_perfil  =  5.679e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  15.1986e-4; Iy_perfil     =  2.0286e-4; % (m4) / (m4)
        raiogx     =  0.2506;     raiogy        =  0.0916;    % (m) / (m)
        Alma_W     =  35.1;       Mesa_F        =  10.5;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==86 % perfil CVS 550 x 373     /86
        
        d_perfil   =  0.550;      massa_perfil  =  372.9;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  4.750e-2;  %  (m) / (m2)
        Zx_perfil  =  10.413e-3;  Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  25.0408e-4; Iy_perfil     =  4.8060e-4; % (m4) / (m4)
        raiogx     =  0.2296;     raiogy        =  0.1006;    % (m) / (m)
        Alma_W     =  18.4;       Mesa_F        =  4.40;      % (h0/t0) / (b/2t)
        E_tw       =  25.0e-3;                                % (m)
        
    elseif x(i)==87 % perfil CVS 550 x 363     /87
        
        d_perfil   =  0.550;      massa_perfil  =  363.5;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  4.630e-2;  %  (m) / (m2)
        Zx_perfil  =  10.275e-3;  Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  24.8299e-4; Iy_perfil     =  4.8043e-4; % (m4) / (m4)
        raiogx     =  0.2316;     raiogy        =  0.1019;    % (m) / (m)
        Alma_W     =  20.5;       Mesa_F        =  4.40;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==88 % perfil CVS 550 x 329     /88
        
        d_perfil   =  0.550;      massa_perfil  =  328.7;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  4.188e-2;  %  (m) / (m2)
        Zx_perfil  =  9.098e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  21.9671e-4; Iy_perfil     =  4.0062e-4; % (m4) / (m4)
        raiogx     =  0.2290;     raiogy        =  0.0978;    % (m) / (m)
        Alma_W     =  19.0;       Mesa_F        =  5.30;      % (h0/t0) / (b/2t)
        E_tw       =  25.0e-3;                                % (m)
        
    elseif x(i)==89 % perfil CVS 550 x 319     /89
        
        d_perfil   =  0.550;      massa_perfil  =  319.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  4.064e-2;  %  (m) / (m2)
        Zx_perfil  =  8.951e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  21.7349e-4; Iy_perfil     =  4.0044e-4; % (m4) / (m4)
        raiogx     =  0.2313;     raiogy        =  0.0993;    % (m) / (m)
        Alma_W     =  21.2;       Mesa_F        =  5.30;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==90 % perfil CVS 550 x 293     /90
        
        d_perfil   =  0.550;      massa_perfil  =  293.4;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  3.738e-2;  %  (m) / (m2)
        Zx_perfil  =  8.015e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  19.3642e-4; Iy_perfil     =  3.3663e-4; % (m4) / (m4)
        raiogx     =  0.2276;     raiogy        =  0.0949;    % (m) / (m)
        Alma_W     =  19.5;       Mesa_F        =  6.30;      % (h0/t0) / (b/2t)
        E_tw       =  25.0e-3;                                % (m)
        
    elseif x(i)==91 % perfil CVS 550 x 283     /91
        
        d_perfil   =  0.550;      massa_perfil  =  283.5;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  3.611e-2;  %  (m) / (m2)
        Zx_perfil  =  7.861e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  19.1139e-4; Iy_perfil     =  3.3646e-4; % (m4) / (m4)
        raiogx     =  0.2301;     raiogy        =  0.0965;    % (m) / (m)
        Alma_W     =  21.7;       Mesa_F        =  6.30;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==92 % perfil CVS 550 x 270     /92
        
        d_perfil   =  0.550;      massa_perfil  =  270.5;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  3.445e-2;  %  (m) / (m2)
        Zx_perfil  =  7.660e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  18.7867e-4; Iy_perfil     =  3.3628e-4; % (m4) / (m4)
        raiogx     =  0.2335;     raiogy        =  0.0988;    % (m) / (m)
        Alma_W     =  25.6;       Mesa_F        =  6.30;      % (h0/t0) / (b/2t)
        E_tw       =  19.0e-3;                                % (m)
        
    elseif x(i)==93 % perfil CVS 550 x 245     /93
        
        d_perfil   =  0.550;      massa_perfil  =  244.9;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  3.120e-2;  %  (m) / (m2)
        Zx_perfil  =  6.650e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  16.1250e-4; Iy_perfil     =  2.6713e-4; % (m4) / (m4)
        raiogx     =  0.2273;     raiogy        =  0.0925;    % (m) / (m)
        Alma_W     =  22.3;       Mesa_F        =  8.00;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==94 % perfil CVS 550 x 232     /94
        
        d_perfil   =  0.550;      massa_perfil  =  231.6;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  2.950e-2;  %  (m) / (m2)
        Zx_perfil  =  6.438e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  15.7708e-4; Iy_perfil     =  2.6695e-4; % (m4) / (m4)
        raiogx     =  0.2312;     raiogy        =  0.0951;    % (m) / (m)
        Alma_W     =  26.3;       Mesa_F        =  8.00;      % (h0/t0) / (b/2t)
        E_tw       =  19.0e-3;                                % (m)
        
    elseif x(i)==95 % perfil CVS 550 x 220     /95
        
        d_perfil   =  0.550;      massa_perfil  =  219.8;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  2.80e-2;   %  (m) / (m2)
        Zx_perfil  =  6.250e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  15.4583e-4; Iy_perfil     =  2.6684e-4; % (m4) / (m4)
        raiogx     =  0.2350;     raiogy        =  0.0976;    % (m) / (m)
        Alma_W     =  31.3;       Mesa_F        =  8.00;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==96 % perfil CVS 550 x 204     /96
        
        d_perfil   =  0.550;      massa_perfil  =  204.1;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  2.60e-2;   %  (m) / (m2)
        Zx_perfil  =  5.748e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  14.1973e-4; Iy_perfil     =  2.3911e-4; % (m4) / (m4)
        raiogx     =  0.2337;     raiogy        =  0.0959;    % (m) / (m)
        Alma_W     =  31.6;       Mesa_F        =  8.90;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==97 % perfil CVS 550 x 184     /97
        
        d_perfil   =  0.550;      massa_perfil  =  183.6;     %  (m) / (kg/m)
        Bf_perfil  =  0.400;      A_perfil      =  2.339e-2;  %  (m) / (m2)
        Zx_perfil  =  5.084e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  12.5087e-4; Iy_perfil     =  2.0284e-4; % (m4) / (m4)
        raiogx     =  0.2312;     raiogy        =  0.0931;    % (m) / (m)
        Alma_W     =  32.0;       Mesa_F        =  10.5;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==98 % perfil CVS 500 x 319     /98
        
        d_perfil   =  0.500;      massa_perfil  =  319.4;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  4.068e-2;  %  (m) / (m2)
        Zx_perfil  =  8.108e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  17.6429e-4; Iy_perfil     =  3.2195e-4; % (m4) / (m4)
        raiogx     =  0.2082;     raiogy        =  0.0890;    % (m) / (m)
        Alma_W     =  18.3;       Mesa_F        =  3.90;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==99 % perfil CVS 500 x 281     /99
        
        d_perfil   =  0.500;      massa_perfil  =  208.8;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  3.577e-2;  %  (m) / (m2)
        Zx_perfil  =  7.082e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  15.5013e-4; Iy_perfil     =  2.6837e-4; % (m4) / (m4)
        raiogx     =  0.2082;     raiogy        =  0.0866;    % (m) / (m)
        Alma_W     =  19.0;       Mesa_F        =  4.70;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==100 % perfil CVS 500 x 259     /100
        
        d_perfil   =  0.500;      massa_perfil  =  258.9;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  3.298e-2;  %  (m) / (m2)
        Zx_perfil  =  6.359e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  13.8564e-4; Iy_perfil     =  2.2566e-4; % (m4) / (m4)
        raiogx     =  0.2050;     raiogy        =  0.0827;    % (m) / (m)
        Alma_W     =  17.5;       Mesa_F        =  5.60;      % (h0/t0) / (b/2t)
        E_tw       =  25.0e-3;                                % (m)
        
    elseif x(i)==101 % perfil CVS 500 x 250     /101
        
        d_perfil   =  0.500;      massa_perfil  =  249.9;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  3.184e-2;  %  (m) / (m2)
        Zx_perfil  =  6.235e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  13.6755e-4; Iy_perfil     =  2.2550e-4; % (m4) / (m4)
        raiogx     =  0.2072;     raiogy        =  0.0842;    % (m) / (m)
        Alma_W     =  19.5;       Mesa_F        =  5.60;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==102 % perfil CVS 500 x 238     /102
        
        d_perfil   =  0.500;      massa_perfil  =  238.3;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  3.035e-2;  %  (m) / (m2)
        Zx_perfil  =  6.072e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  13.4391e-4; Iy_perfil     =  2.2534e-4; % (m4) / (m4)
        raiogx     =  0.2104;     raiogy        =  0.0862;    % (m) / (m)
        Alma_W     =  23.0;       Mesa_F        =  5.60;      % (h0/t0) / (b/2t)
        E_tw       =  19.0e-3;                                % (m)
        
    elseif x(i)==103 % perfil CVS 500 x 217     /103
        
        d_perfil   =  0.500;      massa_perfil  =  216.5;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  2.758e-2;  %  (m) / (m2)
        Zx_perfil  =  5.290e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  11.5812e-4; Iy_perfil     =  1.7907e-4; % (m4) / (m4)
        raiogx     =  0.2049;     raiogy        =  0.0806;    % (m) / (m)
        Alma_W     =  20.1;       Mesa_F        =  7.00;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==104 % perfil CVS 500 x 204     /104
        
        d_perfil   =  0.500;      massa_perfil  =  204.5;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  2.605e-2;  %  (m) / (m2)
        Zx_perfil  =  5.118e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  11.3230e-4; Iy_perfil     =  1.7890e-4; % (m4) / (m4)
        raiogx     =  0.2085;     raiogy        =  0.0829;    % (m) / (m)
        Alma_W     =  23.7;       Mesa_F        =  7.00;      % (h0/t0) / (b/2t)
        E_tw       =  19.0e-3;                                % (m)
        
    elseif x(i)==105 % perfil CVS 500 x 194     /105
        
        d_perfil   =  0.500;      massa_perfil  =  193.9;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  2.470e-2;  %  (m) / (m2)
        Zx_perfil  =  4.966e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  11.0952e-4; Iy_perfil     =  1.7880e-4; % (m4) / (m4)
        raiogx     =  0.2119;     raiogy        =  0.0851;    % (m) / (m)
        Alma_W     =  28.1;       Mesa_F        =  7.00;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==106 % perfil CVS 500 x 180     /106
        
        d_perfil   =  0.500;      massa_perfil  =  180.3;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  2.296e-2;  %  (m) / (m2)
        Zx_perfil  =  4.573e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  10.2058e-4; Iy_perfil     =  1.6022e-4; % (m4) / (m4)
        raiogx     =  0.2108;     raiogy        =  0.0835;    % (m) / (m)
        Alma_W     =  28.5;       Mesa_F        =  7.80;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==107 % perfil CVS 500 x 162     /107
        
        d_perfil   =  0.500;      massa_perfil  =  162.4;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  2.069e-2;  %  (m) / (m2)
        Zx_perfil  =  4.052e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  9.0116e-4;  Iy_perfil     =  1.3593e-4; % (m4) / (m4)
        raiogx     =  0.2087;     raiogy        =  0.0811;    % (m) / (m)
        Alma_W     =  28.9;       Mesa_F        =  9.20;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==108 % perfil CVS 500 x 150     /108
        
        d_perfil   =  0.500;      massa_perfil  =  149.7;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  1.908e-2;  %  (m) / (m2)
        Zx_perfil  =  3.866e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  8.7240e-4;   Iy_perfil     =  1.3585e-4; % (m4) / (m4)
        raiogx     =  0.2139;     raiogy        =  0.0844;    % (m) / (m)
        Alma_W     =  37.0;       Mesa_F        =  9.20;      % (h0/t0) / (b/2t)
        E_tw       =  12.5e-3;                                % (m)
        
    elseif x(i)==109 % perfil CVS 500 x 134     /109
        
        d_perfil   =  0.500;      massa_perfil  =  133.8;     %  (m) / (kg/m)
        Bf_perfil  =  0.350;      A_perfil      =  1.705e-2;  %  (m) / (m2)
        Zx_perfil  =  3.395e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  7.6293-4;   Iy_perfil     =  1.1441e-4; % (m4) / (m4)
        raiogx     =  0.2115;     raiogy        =  0.0819;    % (m) / (m)
        Alma_W     =  37.4;       Mesa_F        =  10.9;      % (h0/t0) / (b/2t)
        E_tw       =  12.5e-3;                                % (m)
        
    elseif x(i)==110 % perfil CVS 450 x 216     /110
        
        d_perfil   =  0.450;      massa_perfil  =  216.4;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  2.757e-2;  %  (m) / (m2)
        Zx_perfil  =  4.794e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  9.3730e-4;   Iy_perfil     =  1.4211e-4; % (m4) / (m4)
        raiogx     =  0.1844;     raiogy        =  0.0718;    % (m) / (m)
        Alma_W     =  17.3;       Mesa_F        =  4.8;       % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==111 % perfil CVS 450 x 206     /111
        
        d_perfil   =  0.450;      massa_perfil  =  206.1;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  2.625e-2;  %  (m) / (m2)
        Zx_perfil  =  4.666e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  9.2088e-4;  Iy_perfil     =  1.4197e-4; % (m4) / (m4)
        raiogx     =  0.1873;     raiogy        =  0.0735;    % (m) / (m)
        Alma_W     =  20.4;       Mesa_F        =  4.8;       % (h0/t0) / (b/2t)
        E_tw       =  19.0e-3;                                % (m)
        
    elseif x(i)==112 % perfil CVS 450 x 188     /112
        
        d_perfil   =  0.450;      massa_perfil  =  188.1;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  2.396e-2;  %  (m) / (m2)
        Zx_perfil  =  4.084e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  7.9759e-4;  Iy_perfil     =  1.1287e-4; % (m4) / (m4)
        raiogx     =  0.1825;     raiogy        =  0.0686;    % (m) / (m)
        Alma_W     =  17.9;       Mesa_F        =  6.00;      % (h0/t0) / (b/2t)
        E_tw       =  22.4e-3;                                % (m)
        
    elseif x(i)==113 % perfil CVS 450 x 177     /113
        
        d_perfil   =  0.450;      massa_perfil  =  177.4;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  2.260e-2;  %  (m) / (m2)
        Zx_perfil  =  3.948e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  7.7946e-4;  Iy_perfil     =  1.1273e-4; % (m4) / (m4)
        raiogx     =  0.1857;     raiogy        =  0.0706;    % (m) / (m)
        Alma_W     =  21.1;       Mesa_F        =  6.00;      % (h0/t0) / (b/2t)
        E_tw       =  19.0e-3;                                % (m)
        
    elseif x(i)==114 % perfil CVS 450 x 168     /114
        
        d_perfil   =  0.450;      massa_perfil  =  168.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  2.140e-2;  %  (m) / (m2)
        Zx_perfil  =  3.828e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  7.6346e-4;  Iy_perfil     =  1.1264e-4; % (m4) / (m4)
        raiogx     =  0.1889;     raiogy        =  0.0725;    % (m) / (m)
        Alma_W     =  25.0;       Mesa_F        =  6.00;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==115 % perfil CVS 450 x 156     /115
        
        d_perfil   =  0.450;      massa_perfil  =  156.4;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  1.992e-2;  %  (m) / (m2)
        Zx_perfil  =  3.530e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  7.0362e-4;  Iy_perfil     =  1.0094e-4; % (m4) / (m4)
        raiogx     =  0.1879;     raiogy        =  0.0712;    % (m) / (m)
        Alma_W     =  25.3;       Mesa_F        =  6.70;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==116 % perfil CVS 450 x 141     /116
        
        d_perfil   =  0.450;      massa_perfil  =  141.2;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  1.799e-2;  %  (m) / (m2)
        Zx_perfil  =  3.136e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  6.2301e-4;  Iy_perfil     =  0.8564e-4; % (m4) / (m4)
        raiogx     =  0.1861;     raiogy        =  0.0690;    % (m) / (m)
        Alma_W     =  25.8;       Mesa_F        =  7.90;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==117 % perfil CVS 450 x 130     /117
        
        d_perfil   =  0.450;      massa_perfil  =  139.9;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  1.655e-2;  %  (m) / (m2)
        Zx_perfil  =  2.987e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  6.0261e-4;  Iy_perfil     =  0.8557e-4; % (m4) / (m4)
        raiogx     =  0.1908;     raiogy        =  0.0719;    % (m) / (m)
        Alma_W     =  33.0;       Mesa_F        =  7.90;      % (h0/t0) / (b/2t)
        E_tw       =  12.5e-3;                                % (m)
        
    elseif x(i)==118 % perfil CVS 450 x 116     /118
        
        d_perfil   =  0.450;      massa_perfil  =  116.4;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  1.483e-2;  %  (m) / (m2)
        Zx_perfil  =  2.629e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  5.2834e-4;  Iy_perfil     =  0.7207e-4; % (m4) / (m4)
        raiogx     =  0.1888;     raiogy        =  0.0697;    % (m) / (m)
        Alma_W     =  33.4;       Mesa_F        =  9.40;      % (h0/t0) / (b/2t)
        E_tw       =  12.5e-3;                                % (m)
        
    elseif x(i)==119 % perfil CVS 400 x 162     /119
        
        d_perfil   =  0.400;      massa_perfil  =  161.7;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  2.060e-2;  %  (m) / (m2)
        Zx_perfil  =  3.303e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  5.8529e-4;  Iy_perfil     =  1.1262e-4; % (m4) / (m4)
        raiogx     =  0.1686;     raiogy        =  0.0739;    % (m) / (m)
        Alma_W     =  21.9;       Mesa_F        =  6.00;      % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==120 % perfil CVS 400 x 152     /120
        
        d_perfil   =  0.400;      massa_perfil  =  152.1;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  1.938e-2;  %  (m) / (m2)
        Zx_perfil  =  3.195e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  5.7279e-4;  Iy_perfil     =  1.1256e-4; % (m4) / (m4)
        raiogx     =  0.1719;     raiogy        =  0.0762;    % (m) / (m)
        Alma_W     =  28.0;       Mesa_F        =  6.00;      % (h0/t0) / (b/2t)
        E_tw       =  12.5e-3;                                % (m)
        
    elseif x(i)==121 % perfil CVS 400 x 140     /121
        
        d_perfil   =  0.400;      massa_perfil  =  140.4;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  1.788e-2;  %  (m) / (m2)
        Zx_perfil  =  2.932e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  5.2632e-4;  Iy_perfil     =  1.0056e-4; % (m4) / (m4)
        raiogx     =  0.1716;     raiogy        =  0.0751;    % (m) / (m)
        Alma_W     =  28.4;       Mesa_F        =  6.70;      % (h0/t0) / (b/2t)
        E_tw       =  12.5e-3;                                % (m)
        
    elseif x(i)==122 % perfil CVS 400 x 125     /122
        
        d_perfil   =  0.400;      massa_perfil  =  125.0;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  1.593e-2;  %  (m) / (m2)
        Zx_perfil  =  2.581e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  4.6347e-4;  Iy_perfil     =  0.8556e-4; % (m4) / (m4)
        raiogx     =  0.1706;     raiogy        =  0.0733;    % (m) / (m)
        Alma_W     =  29.0;       Mesa_F        =  7.90;      % (h0/t0) / (b/2t)
        E_tw       =  12.5e-3;                                % (m)
        
    elseif x(i)==123 % perfil CVS 400 x 116     /123
        
        d_perfil   =  0.400;      massa_perfil  =  116.5;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  1.484e-2;  %  (m) / (m2)
        Zx_perfil  =  2.483e-3;   Zy_perfil     =  0;         % (m3) / (m3)
        Ix_perfil  =  4.5161e-4;  Iy_perfil     =  0.8553e-4; % (m4) / (m4)
        raiogx     =  0.1745;     raiogy        =  0.0759;    % (m) / (m)
        Alma_W     =  38.1;       Mesa_F        =  7.90;      % (h0/t0) / (b/2t)
        E_tw       =  9.50e-3;                                % (m)
        
    elseif x(i)==124 % perfil CVS 400 x 103     /124
        
        d_perfil   =  0.400;      massa_perfil  =  102.8;     %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  1.310e-2;  %  (m) / (m2)
        Zx_perfil  =  2.165e-3;   Zy_perfil     =  0;         %  (m3) / (m3)
        Ix_perfil  =  3.9355e-4;  Iy_perfil     =  0.7203e-4; % (m4) / (m4)
        raiogx     =  0.1734;     raiogy        =  0.0742;    % (m) / (m)
        Alma_W     =  38.7;       Mesa_F        =  9.40;      % (h0/t0) / (b/2t)
        E_tw       =  9.50e-3;                                % (m)
        
    elseif x(i)==125 % perfil CVS 400 x 87     /125
        
        d_perfil   =  0.400;      massa_perfil  =  86.8;      %  (m) / (kg/m)
        Bf_perfil  =  0.300;      A_perfil      =  1.106e-2;  %  (m) / (m2)
        Zx_perfil  =  1.787e-3;   Zy_perfil     =  0;         %  (m3) / (m3)
        Ix_perfil  =  3.2309e-4;  Iy_perfil     =  5.628e-5;  % (m4) / (m4)
        raiogx     =  0.1710;     raiogy        =  0.0713;    % (m) / (m)
        Alma_W     =  39.5;       Mesa_F        =  12.0;      % (h0/t0) / (b/2t)
        E_tw       =  9.50e-3;                                % (m)
        
    elseif x(i)==126 % perfil CVS 350 x 136     /126
        
        d_perfil   =  0.350;      massa_perfil  =  135.8;     %  (m) / (kg/m)
        Bf_perfil  =  0.250;      A_perfil      =  1.730e-2;  %  (m) / (m2)
        Zx_perfil  =  2.391e-3;   Zy_perfil     =  0;         %  (m3) / (m3)
        Ix_perfil  =  3.6673e-4;  Iy_perfil     =  6.521e-5;  % (m4) / (m4)
        raiogx     =  0.1456;     raiogy        =  0.0614;    % (m) / (m)
        Alma_W     =  18.8;       Mesa_F        =  5.0;       % (h0/t0) / (b/2t)
        E_tw       =  16.0e-3;                                % (m)
        
    elseif x(i)==127 % perfil CVS 350 x 128     /127
        
        d_perfil   =  0.350;      massa_perfil  =  127.6;     %  (m) / (kg/m)
        Bf_perfil  =  0.250;      A_perfil      =  1.625e-2;  %  (m) / (m2)
        Zx_perfil  =  4.7491e-3;  Zy_perfil     =  0;         %  (m3) / (m3)
        Ix_perfil  =  3.5885e-4;  Iy_perfil     =  6.515e-5;  % (m4) / (m4)
        raiogx     =  0.1486;     raiogy        =  0.0633;    % (m) / (m)
        Alma_W     =  24.0;       Mesa_F        =  5.0;       % (h0/t0) / (b/2t)
        E_tw       =  12.5e-3;                                % (m)
        
    elseif x(i)==128 % perfil CVS 350 x 118     /128
        
        d_perfil   =  0.350;      massa_perfil  =  117.9;     %  (m) / (kg/m)
        Bf_perfil  =  0.250;      A_perfil      =  1.502e-2;  %  (m) / (m2)
        Zx_perfil  =  2.126e-3;   Zy_perfil     =  0;         %  (m3) / (m3)
        Ix_perfil  =  3.3058e-4;  Iy_perfil     =  5.838e-5;  % (m4) / (m4)
        raiogx     =  0.1484;     raiogy        =  0.0624;    % (m) / (m)
        Alma_W     =  24.4;       Mesa_F        =  5.6;       % (h0/t0) / (b/2t)
        E_tw       =  12.5e-3;                                % (m)
        
    end
    
    Massa(i)= massa_perfil;
    d(i)=d_perfil;
    Zx(i)=Zx_perfil;
    Ix(i)=Ix_perfil;
    A(i)=A_perfil;
    Bf(i)= Bf_perfil;
    Zy(i)=Zy_perfil;
    Iy(i)=Iy_perfil;
    rgx(i)=raiogx;
    rgy(i)=raiogy;
    lambda_W(i) = Alma_W;
    lambda_F(i)=Mesa_F;
    tw(i)=E_tw;
    
    if Ix<0,
        disp( '******* Ix negativo');
        keyboard;
    end
end
