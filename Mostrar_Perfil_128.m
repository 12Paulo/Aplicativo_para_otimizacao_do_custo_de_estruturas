function [Mostrar] = Mostrar_Perfil_128(x)
% Engenheiro Sérgio Ferreira
%% Banco de dados com 128 perfis nacionais
% Para incluir basta criar mais uma for e seguir o padrão
% Lembrete: Alterar a quantidade na função Limites_VPs

%%
global  n_grupo

% -------------------------------------------------------------------------

%keyboard
% ===========================================
% Perfis Laminados I e H (Gerdau) Aço AR 350
% ===========================================
Mostrar=cell(n_grupo,2);


for i=1:1:n_grupo;
    
    if x(i)==1   % perfil I 150 x 13.0 (W6x8.5)     / 1
        Nome='Perfil I 150 x 13.0  (W6x8.5)';
        d   =  0.148;      Massa  =  13.0;     %  (m) / (kg/m)
        Bf  =  0.100;      Area      =  1.66e-3;  %  (m) / (m2)
        Zx  =  9.64e-5;    Zy     =  2.55e-5;  % (m3) / (m3)
        Ix  =  6.35e-6;    Iy     =  8.2e-7;   % (m4) / (m4)
        raiogx     =  0.0618;
        
    elseif x(i)==2 % perfil I 150 x 18.0  (W6x12)     /2
        Nome='Perfil I 150 x 18.0  (W6x12)';
        d   =  0.153;      Massa  =  18.0;     %  (m) / (kg/m)
        Bf  =  0.102;      Area      =  2.34e-3;  %  (m) / (m2)
        Zx  =  1.394e-4;   Zy     =  3.85e-5;  % (m3) / (m3)
        Ix  =  9.39e-6;    Iy     =  1.26e-6;   % (m4) / (m4)
        raiogx     =  0.0634;
        
    elseif x(i)==3 % perfil H 150 x 22.5  (W6x15)    /3
        Nome='Perfil H 150 x 22.5  (W6x15)';
        d   =  0.152;      Massa  =  22.5;     %  (m) / (kg/m)
        Bf  =  0.152;      Area      =  2.9e-3;  %  (m) / (m2)
        Zx  =  1.796e-4;   Zy     =  7.79e-5;  % (m3) / (m3)
        Ix  =  1.229e-5;   Iy     =  3.87e-6;   % (m4) / (m4)
        raiogx     =  0.0651;
        
    elseif x(i)==4 % perfil I 150 x 24.0  (W6x16)    /4
        Nome='Perfil I 150 x 24.0  (W6x16)';
        d   =  0.160;      Massa  =  24.0;     %  (m) / (kg/m)
        Bf  =  0.102;      Area      =  3.15e-3;  %  (m) / (m2)
        Zx  =  1.976e-4;   Zy     =  5.58e-5;  % (m3) / (m3)
        Ix  =  1.384e-5;   Iy     =  1.83e-6;   % (m4) / (m4)
        raiogx     =  0.0663;
        
    elseif x(i)==5 % perfil H 150 x 29.8  (W6x20)    /5
        Nome='Perfil H 150 x 29.8  (W6x20)';
        d   =  0.157;      Massa  =  29.8;     %  (m) / (kg/m)
        Bf  =  0.153;      Area      =  38.5e-3;  %  (m) / (m2)
        Zx  =  2.475e-4;   Zy     =  1.108e-4;  % (m3) / (m3)
        Ix  =  1.739e-5;   Iy     =  5.56e-6;   % (m4) / (m4)
        raiogx     =  0.0672;
        
    elseif x(i)==6 % perfil H 150 x 37.1  (W6x25)    /6
        Nome='Perfil H 150 x 37.1  (W6x25)';
        d   =  0.162;      Massa  =  37.1;     %  (m) / (kg/m)
        Bf  =  0.154;      Area      =  4.78e-3;  %  (m) / (m2)
        Zx  =  3.135e-4;   Zy     =  1.404e-4;  % (m3) / (m3)
        Ix  =  2.244e-5;   Iy     =  7.07e-6;   % (m4) / (m4)
        raiogx     =  0.0685;
        
    elseif x(i)==7 % perfil I 200 x 15.0  (W8x10)     /7
        Nome='Perfil I 200 x 15.0  (W8x10)';
        d   =  0.200;      Massa  =  15.0;     %  (m) / (kg/m)
        Bf  =  0.100;      Area      =  1.94e-3;  %  (m) / (m2)
        Zx  =  1.479e-4;   Zy     =  2.73e-5;  % (m3) / (m3)
        Ix  =  1.305e-5;   Iy     =  8.7e-7;   % (m4) / (m4)
        raiogx     =  0.0820;
        
    elseif x(i)==8 % perfil I 200 x 22.5  (W8x15)     /8
        Nome='Perfil I 200 x 22.5  (W8x15)';
        d   =  0.206;      Massa  =  22.5;     %  (m) / (kg/m)
        Bf  =  0.102;      Area      =  2.90e-3;  %  (m) / (m2)
        Zx  =  2.255e-4;   Zy     =  4.39e-5;  % (m3) / (m3)
        Ix  =  2.029e-5;   Iy     =  1.42e-6;   % (m4) / (m4)
        raiogx     =  0.0837;
        
    elseif x(i)==9 % perfil I 200 x 26.6  (W8x18)     /9
        Nome='Perfil I 200 x 26.6  (W8x18)';
        d   =  0.207;      Massa  =  26.6;     %  (m) / (kg/m)
        Bf  =  0.133;      Area      =  3.42e-3;  %  (m) / (m2)
        Zx  =  2.823e-4;   Zy     =  7.63e-5;  % (m3) / (m3)
        Ix  =  2.611e-5;   Iy     =  3.30e-6;   % (m4) / (m4)
        raiogx     =  0.0873;
        
    elseif x(i)==10 % perfil I 200 x 31.3  (W8x21)     /10
        Nome='Perfil I 200 x 31.3  (W8x21)';
        d   =  0.210;      Massa  =  31.3;     %  (m) / (kg/m)
        Bf  =  0.134;      Area      =  4.03e-3;  %  (m) / (m2)
        Zx  =  3.386e-4;   Zy     =  9.40e-5;  % (m3) / (m3)
        Ix  =  3.168e-5;   Iy     =  4.10e-6;   % (m4) / (m4)
        raiogx     =  0.0886;
        
    elseif x(i)==11 % perfil H 200 x 35.9  (W8x24)       /11
        Nome='Perfil H 200 x 35.9  (W8x24)'; 
        d   =  0.201;      Massa  =  35.9;     %  (m) / (kg/m)
        Bf  =  0.165;      Area      =  4.57e-3;  %  (m) / (m2)
        Zx  =  3.792e-4;   Zy     =  1.41e-4;  % (m3) / (m3)
        Ix  =  3.437e-5;   Iy     =  7.64e-6;   % (m4) / (m4)
        raiogx     =  0.0867;
        
    elseif x(i)==12 % perfil H 200 x 41.7  (W8x28)       /12
        Nome='Perfil H 200 x 41.7  (W8x28)';
        d   =  0.205;      Massa  =  41.7;     %  (m) / (kg/m)
        Bf  =  0.166;      Area      =  5.35e-3;  %  (m) / (m2)
        Zx  =  4.486e-4;   Zy     =  1.657e-4;  % (m3) / (m3)
        Ix  =  4.114e-5;   Iy     =  9.01e-6;   % (m4) / (m4)
        raiogx     =  0.0877;
        
    elseif x(i)==13 % perfil H 200 x 46.1  (W8x31)       /13
        Nome='Perfil H 200 x 46.1  (W8x31)';
        d   =  0.203;      Massa  =  46.7;     %  (m) / (kg/m)
        Bf  =  0.203;      Area      =  5.86e-3;  %  (m) / (m2)
        Zx  =  4.953e-4;   Zy     =  2.295e-4;  % (m3) / (m3)
        Ix  =  4.543e-5;   Iy     =  1.535e-5;   % (m4) / (m4)
        raiogx     =  0.0881;
        
    elseif x(i)==14 % perfil H 200 x 52.0  (W8x35)       /14
        Nome='Perfil H 200 x 52.0  (W8x35)';
        d   =  0.206;      Massa  =  52.0;     %  (m) / (kg/m)
        Bf  =  0.204;      Area      =  6.69e-3;  %  (m) / (m2)
        Zx  =  5.725e-4;   Zy     =  2.658e-4;  % (m3) / (m3)
        Ix  =  5.298e-5;   Iy     =  1.784e-5;   % (m4) / (m4)
        raiogx     =  0.0890;
        
    elseif x(i)==15 % perfil H 200 x 59.0  (W8x40)       /15
        Nome='Perfil H 200 x 59.0  (W8x40)';
        d   =  0.210;      Massa  =  59.0;     %  (m) / (kg/m)
        Bf  =  0.205;      Area      =  7.60e-3;  %  (m) / (m2)
        Zx  =  6.559e-4;   Zy     =  3.030e-4;  % (m3) / (m3)
        Ix  =  6.140e-5;   Iy     =  2.041e-5;   % (m4) / (m4)
        raiogx     =  0.0899;
        
    elseif x(i)==16 % perfil H 200 x 71.0  (W8x48)       /16
        Nome='Perfil H 200 x 71.0  (W8x48)';
        d   =  0.216;      Massa  =  71.0;     %  (m) / (kg/m)
        Bf  =  0.206;      Area      =  9.10e-3;  %  (m) / (m2)
        Zx  =  8.032e-4;   Zy     =  3.745e-4;  % (m3) / (m3)
        Ix  =  7.660e-5;   Iy     =  2.537e-5;   % (m4) / (m4)
        raiogx     =  0.0917;
        
    elseif x(i)==17 % perfil H 200 x 86.0  (W8x58)       /17
        Nome='Perfil H 200 x 86.0  (W8x58)';
        d   =  0.222;      Massa  =  86.0;     %  (m) / (kg/m)
        Bf  =  0.209;      Area      =  1.109e-2;  %  (m) / (m2)
        Zx  =  9.842e-4;   Zy     =  4.587e-4;  % (m3) / (m3)
        Ix  =  9.498e-5;   Iy     =  3.139e-5;   % (m4) / (m4)
        raiogx     =  0.0926;
        
    elseif x(i)==18 % perfil I 250 x 17.9   (W10x12)  /18
        Nome='Perfil I 250 x 17.9  (W10x12)';
        d   =  0.251;      Massa  =  17.9;     %  (m) / (kg/m)
        Bf  =  0.101;      Area      =  2.31e-3;  %  (m) / (m2)
        Zx  =  2.110e-4;   Zy     =  2.88e-5;  % (m3) / (m3)
        Ix  =  2.291e-5;   Iy     =  9.1e-7;   % (m4) / (m4)
        raiogx     =  0.0996;
        
    elseif x(i)==19 % perfil I 250 x 22.3   (W10x15)  /19
        Nome='Perfil I 250 x 22.3  (W10x15)';
        d   =  0.254;      Massa  =  22.3;     %  (m) / (kg/m)
        Bf  =  0.102;      Area      =  2.89e-3;  %  (m) / (m2)
        Zx  =  2.677e-4;   Zy     =  3.84e-5;  % (m3) / (m3)
        Ix  =  2.939e-5;   Iy     =  1.23e-6;   % (m4) / (m4)
        raiogx     =  0.1009;
        
    elseif x(i)==20 % perfil I 250 x 25.3   (W10x17)  /20
        Nome='Perfil I 250 x 25.3  (W10x17)';
        d   =  0.257;      Massa  =  25.3;     %  (m) / (kg/m)
        Bf  =  0.102;      Area      =  3.26e-3;  %  (m) / (m2)
        Zx  =  3.111e-4;   Zy     =  4.64e-5;  % (m3) / (m3)
        Ix  =  3.473e-5;   Iy     =  1.49e-6;   % (m4) / (m4)
        raiogx     =  0.1031;
        
    elseif x(i)==21 % perfil I 250 x 32.7   (W10x22)  /21
        Nome='Perfil I 250 x 32.7  (W10x22)';
        d   =  0.258;      Massa  =  32.7;     %  (m) / (kg/m)
        Bf  =  0.148;      Area      =  4.21e-3;  %  (m) / (m2)
        Zx  =  4.285e-4;   Zy     =  9.97e-5;  % (m3) / (m3)
        Ix  =  4.937e-5;   Iy     =  4.73e-6;   % (m4) / (m4)
        raiogx     =  0.1083;
        
    elseif x(i)==22 % perfil I 250 x 38.5   (W10x26)   /22
        Nome='Perfil I 250 x 38.5  (W10x26)';
        d   =  0.262;      Massa  =  38.5;     %  (m) / (kg/m)
        Bf  =  0.147;      Area      =  4.96e-3;  %  (m) / (m2)
        Zx  =  5.178e-4;   Zy     =  1.241e-4;  % (m3) / (m3)
        Ix  =  6.057e-5;   Iy     =  5.94e-6;   % (m4) / (m4)
        raiogx     =  0.1105;
        
    elseif x(i)==23 % perfil I 250 x 44.8   (W10x30)   /23
        Nome='Perfil I 250 x 44.8  (W10x30)';
        d   =  0.266;      Massa  =  44.8;     %  (m) / (kg/m)
        Bf  =  0.148;      Area      =  5.76e-3;  %  (m) / (m2)
        Zx  =  6.063e-4;   Zy     =  1.464e-4;  % (m3) / (m3)
        Ix  =  7.158e-5;   Iy     =  7.04e-6;   % (m4) / (m4)
        raiogx     =  0.1115;
        
    elseif x(i)==24 % perfil H 250 x 73.0   (W10x49)    /24
        Nome='Perfil H 250 x 73.0  (W10x49)';
        d   =  0.253;      Massa  =  73.0;     %  (m) / (kg/m)
        Bf  =  0.254;      Area      =  9.27e-3;  %  (m) / (m2)
        Zx  =  9.833e-4;   Zy     =  4.631e-4;  % (m3) / (m3)
        Ix  =  1.1257e-4;  Iy     =  3.880e-5;   % (m4) / (m4)
        raiogx     =  0.1102;
        
    elseif x(i)==25 % perfil H 250 x 80.0   (W10x54)    /25
        Nome='Perfil H 250 x 80.0  (W10x54)';
        d   =  0.256;      Massa  =  80.0;     %  (m) / (kg/m)
        Bf  =  0.255;      Area      =  1.019e-2;  %  (m) / (m2)
        Zx  =  1.0887e-3;  Zy     =  5.131e-4;  % (m3) / (m3)
        Ix  =  1.2550e-4;  Iy     =  4.313e-5;   % (m4) / (m4)
        raiogx     =  0.1110;
        
    elseif x(i)==26 % perfil H 250 x 89.0   (W10x60)    /26
        Nome='Perfil H 250 x 89.0  (W10x60)';
        d   =  0.260;      Massa  =  89.0;     %  (m) / (kg/m)
        Bf  =  0.256;      Area      =  1.139e-2;  %  (m) / (m2)
        Zx  =  1.2244e-3;  Zy     =  5.743e-4;  % (m3) / (m3)
        Ix  =  1.4237e-4;  Iy     =  4.841e-5;   % (m4) / (m4)
        raiogx     =  0.1118;
        
    elseif x(i)==27 % perfil H 250 x 101.0   (W10x68)    /27
        Nome='Perfil H 250 x 101.0 (W10x68)';
        d   =  0.264;      Massa  =  101.0;     %  (m) / (kg/m)
        Bf  =  0.257;      Area      =  1.287e-2;  %  (m) / (m2)
        Zx  =  1.3950e-3;  Zy     =  6.563e-4;  % (m3) / (m3)
        Ix  =  1.6352e-4;  Iy     =  5.549e-5;   % (m4) / (m4)
        raiogx     =  0.1127;
        
    elseif x(i)==28 % perfil H 250 x 115.0   (W10x77)    /28
        Nome='Perfil H 250 x 115.0  (W10x77)';
        d   =  0.269;      Massa  =  115.0;     %  (m) / (kg/m)
        Bf  =  0.259;      Area      =  1.461e-2;  %  (m) / (m2)
        Zx  =  1.5974e-3;  Zy     =  7.527e-4;  % (m3) / (m3)
        Ix  =  1.8920e-4;  Iy     =  6.405e-5;   % (m4) / (m4)
        raiogx     =  0.1138;
        
    elseif x(i)==29 % perfil I 310 x 21.0   (W12x14)    /29
        Nome='Perfil I 310 x 21.0   (W12x14)';
        d   =  0.303;      Massa  =  21.0;     %  (m) / (kg/m)
        Bf  =  0.101;      Area      =  2.72e-3;  %  (m) / (m2)
        Zx  =  2.919e-4;  Zy      =  3.14e-5;  % (m3) / (m3)
        Ix  =  3.776e-5;  Iy      =  9.80e-7;   % (m4) / (m4)
        raiogx     =  0.1177;
        
    elseif x(i)==30 % perfil I 310 x 28.3   (W12x19)    /30
        Nome='Perfil I 310 x 28.3   (W12x19)';
        d   =  0.309;      Massa  =  28.3;     %  (m) / (kg/m)
        Bf  =  0.102;      Area      =  3.65e-3;  %  (m) / (m2)
        Zx  =  4.120e-4;  Zy      =  4.94e-5;  % (m3) / (m3)
        Ix  =  5.500e-5;  Iy      =  1.58e-6;   % (m4) / (m4)
        raiogx     =  0.1228;
        
    elseif x(i)==31 % perfil I 310 x 32.7   (W12x22)    /31
        Nome='Perfil I 310 x 32.7   (W12x22)';
        d   =  0.313;      Massa  =  32.7;     %  (m) / (kg/m)
        Bf  =  0.102;      Area      =  4.21e-3;  %  (m) / (m2)
        Zx  =  4.853e-4;  Zy      =  5.98e-5;  % (m3) / (m3)
        Ix  =  6.570e-5;  Iy      =  1.92e-6;   % (m4) / (m4)
        raiogx     =  0.1249;
        
    elseif x(i)==32 % perfil I 310 x 38.7   (W12x26)    /32
        Nome='Perfil I 310 x 38.7   (W12x26)';
        d   =  0.310;      Massa  =  38.7;     %  (m) / (kg/m)
        Bf  =  0.165;      Area      =  4.97e-3;  %  (m) / (m2)
        Zx  =  6.154e-4;   Zy     =  1.349e-4;  % (m3) / (m3)
        Ix  =  8.581e-5;   Iy     =  7.27e-6;   % (m4) / (m4)
        raiogx     =  0.1314;
        
    elseif x(i)==33 % perfil I 310 x 44.5   (W12x30)     /33
        Nome='Perfil I 310 x 44.5   (W12x30)';
        d   =  0.313;      Massa  =  44.5;     %  (m) / (kg/m)
        Bf  =  0.166;      Area      =  5.72e-3;  %  (m) / (m2)
        Zx  =  7.128e-4;   Zy     =  1.58e-4;  % (m3) / (m3)
        Ix  =  9.997e-5;   Iy     =  8.55e-6;   % (m4) / (m4)
        raiogx     =  0.1322;
        
    elseif x(i)==34 % perfil I 310 x 52.0   (W12x35)     /34
        Nome='Perfil I 310 x 52.0   (W12x35)';
        d   =  0.317;      Massa  =  52.0;     %  (m) / (kg/m)
        Bf  =  0.167;      Area      =  6.70e-3;  %  (m) / (m2)
        Zx  =  8.425e-4;   Zy     =  1.88e-4;  % (m3) / (m3)
        Ix  =  1.1909e-4;  Iy     =  1.026e-5;   % (m4) / (m4)
        raiogx     =  0.1333;
        
    elseif x(i)==35 % perfil H 310 x 97.0   (W12x65)     /35
        Nome='Perfil H 310 x 97.0   (W12x65)';
        d   =  0.308;      Massa  =  97.0;     %  (m) / (kg/m)
        Bf  =  0.305;      Area      =  1.236e-2;  %  (m) / (m2)
        Zx  =  1.5942e-3;  Zy     =  7.25e-4;  % (m3) / (m3)
        Ix  =  2.2284e-4;  Iy     =  7.286e-5;   % (m4) / (m4)
        raiogx     =  0.1343;
        
    elseif x(i)==36 % perfil H 310 x 107.0   (W12x72)     /36
        Nome='Perfil H 310 x 107.0   (W12x72)';
        d   =  0.311;      Massa  =  107.0;     %  (m) / (kg/m)
        Bf  =  0.306;      Area      =  1.364e-2;  %  (m) / (m2)
        Zx  =  1.7682e-3;  Zy     =  8.061e-4;  % (m3) / (m3)
        Ix  =  2.4839e-4;  Iy     =  8.123e-5;   % (m4) / (m4)
        raiogx     =  0.1349;
        
    elseif x(i)==37 % perfil H 310 x 117.0   (W12x79)     /37
        Nome='Perfil H 310 x 117.0   (W12x79)';
        d   =  0.314;      Massa  =  117.0;     %  (m) / (kg/m)
        Bf  =  0.307;      Area      =  1.499e-2;  %  (m) / (m2)
        Zx  =  1.9526e-3;  Zy     =  8.931e-4;  % (m3) / (m3)
        Ix  =  2.7563e-4;  Iy     =  9.024e-5;   % (m4) / (m4)
        raiogx     =  0.1356;
        
    elseif x(i)==38 % perfil I 360 x 32.9    (W14x22)     /38
        Nome='Perfil I 360 x 32.9    (W14x22)';
        d   =  0.349;      Massa  =  32.9;     %  (m) / (kg/m)
        Bf  =  0.127;      Area      =  4.21e-3;  %  (m) / (m2)
        Zx  =  5.476e-4;   Zy     =  7.2e-5;   % (m3) / (m3)
        Ix  =  8.358e-5;   Iy     =  2.91e-6;   % (m4) / (m4)
        raiogx     =  0.1409;
        
    elseif x(i)==39 % perfil I 360 x 39.0     (W14x26)     /39
        Nome='Perfil I 360 x 39.0    (W14x26)';
        d   =  0.353;      Massa  =  39.0;     %  (m) / (kg/m)
        Bf  =  0.128;      Area      =  5.02e-3;  %  (m) / (m2)
        Zx  =  6.677e-4;   Zy     =  9.19e-5;  % (m3) / (m3)
        Ix  =  1.0331e-4;  Iy     =  3.75e-6;   % (m4) / (m4)
        raiogx     =  0.1435;
        
    elseif x(i)==40 % perfil I 360 x 44.6     (W14x30)     /40
        Nome='Perfil I 360 x 44.6    (W14x30)';
        d   =  0.352;      Massa  =  44.6;     %  (m) / (kg/m)
        Bf  =  0.171;      Area      =  5.77e-3;  %  (m) / (m2)
        Zx  =  7.843e-4;   Zy     =  1.480e-4;  % (m3) / (m3)
        Ix  =  1.2258e-4;  Iy     =  8.18e-6;   % (m4) / (m4)
        raiogx     =  0.1458;
        
    elseif x(i)==41 % perfil I 360 x 51.0     (W14x34)     /41
        Nome='Perfil I 360 x 51.0    (W14x34)';
        d   =  0.355;      Massa  =  51.0;     %  (m) / (kg/m)
        Bf  =  0.171;      Area      =  6.48e-3;  %  (m) / (m2)
        Zx  =  8.995e-4;   Zy     =  1.747e-4;  % (m3) / (m3)
        Ix  =  1.4222e-4;  Iy     =  9.68e-6;   % (m4) / (m4)
        raiogx     =  0.1481;
        
    elseif x(i)==42 % perfil I 360 x 58.0     (W14x38)     /42
        Nome='Perfil I 360 x 58.0     (W14x38)';
        d   =  0.358;      Massa  =  58.0;     %  (m) / (kg/m)
        Bf  =  0.172;      Area      =  7.25e-3;  %  (m) / (m2)
        Zx  =  1.0148e-3;  Zy     =  1.998e-4;  % (m3) / (m3)
        Ix  =  1.6143e-4;  Iy     =  1.113e-5;   % (m4) / (m4)
        raiogx     =  0.1492;
        
    elseif x(i)==43 % perfil I 360 x 64.0     (W14x43)     /43
        Nome='Perfil I 360 x 64.0     (W14x43)';
        d   =  0.347;      Massa  =  64.0;     %  (m) / (kg/m)
        Bf  =  0.203;      Area      =  8.17e-3;  %  (m) / (m2)
        Zx  =  1.1455e-3;  Zy     =  2.845e-4;  % (m3) / (m3)
        Ix  =  1.7890e-4;  Iy     =  1.885e-5;   % (m4) / (m4)
        raiogx     =  0.1480;
        
    elseif x(i)==44 % perfil I 360 x 72.0     (W14x48)     /44
        Nome='Perfil I 360 x 72.0     (W14x48)';
        d   =  0.350;      Massa  =  72.0;     %  (m) / (kg/m)
        Bf  =  0.204;      Area      =  9.13e-3;  %  (m) / (m2)
        Zx  =  1.2859e-3;  Zy     =  3.218e-4;  % (m3) / (m3)
        Ix  =  2.0169e-4;   Iy     =  2.140e-5;   % (m4) / (m4)
        raiogx     =  0.1486;
        
    elseif x(i)==45 % perfil I 360 x 79.0     (W14x53)     /45
        Nome='Perfil I 360 x 79.0     (W14x53)';
        d   =  0.354;      Massa  =  79.0;     %  (m) / (kg/m)
        Bf  =  0.205;      Area      =  1.012e-2;  %  (m) / (m2)
        Zx  =  1.4370e-3;  Zy     =  3.619e-4;  % (m3) / (m3)
        Ix  =  2.2713e-4;   Iy     =  2.416e-5;   % (m4) / (m4)
        raiogx     =  0.1498;
        
    elseif x(i)==46 % perfil H 360 x 91.0     (W14x61)     /46
        Nome='Perfil H 360 x 91.0     (W14x61)';
        d   =  0.353;      Massa  =  91.0;     %  (m) / (kg/m)
        Bf  =  0.254;      Area      =  1.159e-2;  %  (m) / (m2)
        Zx  =  1.6801e-3;  Zy     =  5.381e-4;  % (m3) / (m3)
        Ix  =  2.6755e-4;   Iy     =  4.483e-5;   % (m4) / (m4)
        raiogx     =  0.1519;
        
    elseif x(i)==47 % perfil H 360 x 101.0     (W14x68)     /47
        Nome='Perfil H 360 x 101.0    (W14x68)';
        d   =  0.357;      Massa  =  101.0;     %  (m) / (kg/m)
        Bf  =  0.255;      Area      =  1.295e-2;  %  (m) / (m2)
        Zx  =  1.8889e-3;  Zy     =  6.061e-4;  % (m3) / (m3)
        Ix  =  3.0279e-4;  Iy     =  5.063e-5;   % (m4) / (m4)
        raiogx     =  0.1529;
        
    elseif x(i)==48 % perfil H 360 x 110.0     (W14x74)     /48
        Nome='Perfil H 360 x 110.0     (W14x74)';
        d   =  0.360;      Massa  =  110.0;     %  (m) / (kg/m)
        Bf  =  0.256;      Area      =  1.406e-2;  %  (m) / (m2)
        Zx  =  2.0593e-3;  Zy     =  6.645e-4;  % (m3) / (m3)
        Ix  =  3.3155e-4;  Iy     =  5.570e-5;   % (m4) / (m4)
        raiogx     =  0.1536;
        
    elseif x(i)==49 % perfil H 360 x 122.0     (W14x82)     /49
        Nome='Perfil H 360 x 122.0     (W14x82)';
        d   =  0.363;      Massa  =  122.0;     %  (m) / (kg/m)
        Bf  =  0.257;      Area      =  1.553e-2;  %  (m) / (m2)
        Zx  =  2.2698e-3;  Zy     =  7.324e-4;  % (m3) / (m3)
        Ix  =  3.6599e-4;  Iy     =  6.147e-5;   % (m4) / (m4)
        raiogx     =  0.1535;
        
    elseif x(i)==50 % perfil I 410 x 38.8      (W16x26)     /50
        Nome='Perfil I 410 x 38.8      (W16x26)';
        d   =  0.399;      Massa  =  38.8;     %  (m) / (kg/m)
        Bf  =  0.140;      Area      =  5.03e-3;  %  (m) / (m2)
        Zx  =  7.368e-4;   Zy     =  9.09e-5;  % (m3) / (m3)
        Ix  =  1.2777e-4;  Iy     =  4.04e-6;   % (m4) / (m4)
        raiogx     =  0.1594;
        
    elseif x(i)==51 % perfil I 410 x 60.0      (W16x40)     /51
        Nome='Perfil I 410 x 60.0      (W16x40)';
        d   =  0.407;      Massa  =  60.0;     %  (m) / (kg/m)
        Bf  =  0.178;      Area      =  7.62e-3;  %  (m) / (m2)
        Zx  =  1.2015e-3;  Zy     =  2.092e-4;  % (m3) / (m3)
        Ix  =  2.1707e-4;  Iy     =  1.205e-5;   % (m4) / (m4)
        raiogx     =  0.1688;
        
    elseif x(i)==52 % perfil I 460 x 52.0      (W18x35)     /52
        Nome='Perfil I 460 x 52.0      (W18x35)';
        d   =  0.450;      Massa  =  52.0;     %  (m) / (kg/m)
        Bf  =  0.152;      Area      =  6.66e-3;  %  (m) / (m2)
        Zx  =  1.0959e-3;  Zy     =  1.317e-4;  % (m3) / (m3)
        Ix  =  2.1370e-4;  Iy     =  6.34e-6;   % (m4) / (m4)
        raiogx     =  0.1791;
        
    elseif x(i)==53 % perfil I 460 x 89.0      (W18x60)     /53
        Nome='Perfil I 460 x 89.0      (W18x60)';
        d   =  0.463;      Massa  =  89.0;     %  (m) / (kg/m)
        Bf  =  0.192;      Area      =  1.141e-2;  %  (m) / (m2)
        Zx  =  2.0194e-3;  Zy     =  3.390e-4;  % (m3) / (m3)
        Ix  =  4.1105e-4;  Iy     =  2.093e-5;   % (m4) / (m4)
        raiogx     =  0.1898;
        
    elseif x(i)==54 % perfil I 530 x 66.0       (W21x44)     /54
        Nome='Perfil I 530 x 66.0      (W21x44)';
        d   =  0.525;      Massa  =  66.0;     %  (m) / (kg/m)
        Bf  =  0.165;      Area      =  8.36e-3;  %  (m) / (m2)
        Zx  =  1.558e-3;   Zy     =  1.66e-4;  % (m3) / (m3)
        Ix  =  3.4971e-4;  Iy     =  8.57e-6;   % (m4) / (m4)
        raiogx     =  0.2046;
        
    elseif x(i)==55 % perfil I 530 x 74.0       (W21x50)     /55
        Nome='Perfil I 530 x 74.0      (W21x50)';
        d   =  0.529;      Massa  =  74.0;     %  (m) / (kg/m)
        Bf  =  0.166;      Area      =  9.51e-3;  %  (m) / (m2)
        Zx  =  1.8049e-3;  Zy     =  2.001e-4;  % (m3) / (m3)
        Ix  =  4.0969e-4;  Iy     =  1.041e-5;   % (m4) / (m4)
        raiogx     =  0.2076;
        
    elseif x(i)==56 % perfil I 530 x 82.0       (W21x55)     /56
        Nome='Perfil I 530 x 82.0      (W21x55)';
        d   =  0.528;      Massa  =  82.0;     %  (m) / (kg/m)
        Bf  =  0.209;      Area      =  1.045e-2;  %  (m) / (m2)
        Zx  =  2.0585e-3;  Zy     =  3.027e-4;  % (m3) / (m3)
        Ix  =  4.7569e-4;  Iy     =  2.028e-5;   % (m4) / (m4)
        raiogx     =  0.2134;
        
    elseif x(i)==57 % perfil I 530 x 92.0       (W21x62)     /57
        Nome='Perfil I 530 x 92.0      (W21x62)';
        d   =  0.533;      Massa  =  92.0;     %  (m) / (kg/m)
        Bf  =  0.209;      Area      =  1.176e-2;  %  (m) / (m2)
        Zx  =  2.3598e-3;  Zy     =  3.547e-4;  % (m3) / (m3)
        Ix  =  5.5157e-4;  Iy     =  2.379e-5;   % (m4) / (m4)
        raiogx     =  0.2165;
        
    elseif x(i)==58 % perfil I 530 x 109.0       (W21x73)     /58
        Nome='Perfil I 530 x 109.0     (W21x73)';
        d   =  0.539;      Massa  =  109.0;     %  (m) / (kg/m)
        Bf  =  0.211;      Area      =  1.397e-2;  %  (m) / (m2)
        Zx  =  2.8470e-3;  Zy     =  4.374e-4;  % (m3) / (m3)
        Ix  =  6.7226e-4;  Iy     =  2.952e-5;   % (m4) / (m4)
        raiogx     =  0.2194;
        
    elseif x(i)==59 % perfil I 610 x 101.0        (W24x68)     /59
        Nome='Perfil I 610 x 101.0     (W24x68)';
        d   =  0.603;      Massa  =  101.0;     %  (m) / (kg/m)
        Bf  =  0.228;      Area      =  1.303e-2;  %  (m) / (m2)
        Zx  =  2.9227e-3;  Zy     =  4.050e-5;  % (m3) / (m3)
        Ix  =  7.7003e-4;  Iy     =  2.951e-5;   % (m4) / (m4)
        raiogx     =  0.2431;
        
    elseif x(i)==60 % perfil I 610 x 113.0        (W24x76)     /60
        Nome='Perfil I 610 x 113.0      (W24x76)';
        d   =  0.608;      Massa  =  113.0;     %  (m) / (kg/m)
        Bf  =  0.228;      Area      =  1.453e-2;  %  (m) / (m2)
        Zx  =  3.3129e-3;  Zy     =  4.697e-5;  % (m3) / (m3)
        Ix  =  8.8196e-4;  Iy     =  3.426e-5;   % (m4) / (m4)
        raiogx     =  0.2464;
        
    elseif x(i)==61 % perfil I 610 x 125.0        (W24x84)     /61
        Nome='Perfil I 610 x 125.0       (W24x84)';
        d   =  0.612;      Massa  =  125.0;     %  (m) / (kg/m)
        Bf  =  0.229;      Area      =  1.601e-2;  %  (m) / (m2)
        Zx  =  3.6973e-3;  Zy     =  5.363e-5;  % (m3) / (m3)
        Ix  =  9.9184e-4;  Iy     =  3.933e-5;   % (m4) / (m4)
        raiogx     =  0.2489;
        
    elseif x(i)==62 % perfil I 610 x 140.0        (W24x94)     /62
        Nome='Perfil I 610 x 140.0       (W24x94)';
        d   =  0.617;      Massa  =  140.0;     %  (m) / (kg/m)
        Bf  =  0.230;      Area      =  1.793e-2;  %  (m) / (m2)
        Zx  =  4.1731e-3;  Zy     =  6.140e-5;  % (m3) / (m3)
        Ix  =  1.1262e-3;  Iy     =  4.515e-5;   % (m4) / (m4)
        raiogx     =  0.2506;
        
    elseif x(i)==63 % perfil I 610 x 140.0        (W24x104)     /63
        Nome='Perfil I 610 x 140.0       (W24x104)';
        d   =  0.611;      Massa  =  155.0;     %  (m) / (kg/m)
        Bf  =  0.324;      Area      =  1.981e-2;  %  (m) / (m2)
        Zx  =  4.7491e-3;  Zy     =  1.0226e-4;  % (m3) / (m3)
        Ix  =  1.2958e-3;  Iy     =  1.0783e-4;   % (m4) / (m4)
        raiogx     =  0.2558;
        
    elseif x(i)==64 % perfil I 610 x 174.0        (W24x117)     /64
        Nome='Perfil I 610 x 174.0       (W24x117)';
        d   =  0.616;      Massa  =  174.0;     %  (m) / (kg/m)
        Bf  =  0.325;      Area      =  2.228e-2;  %  (m) / (m2)
        Zx  =  5.3833e-3;  Zy     =  1.1711e-4;  % (m3) / (m3)
        Ix  =  1.4775e-3;  Iy     =  1.2374e-4;   % (m4) / (m4)
        raiogx     =  0.2575;
      
    elseif x(i)==65   % perfil CVS 650 x 461      /65
           Nome='Perfil CVS 650 x 461';
            d   =  0.650;      Massa  =  416.2;     %  (m) / (kg/m)
            Bf  =  0.450;      Area      =  5.875e-2;  %  (m) / (m2)
            Zx  =  15.391e-3;  Zy     =  0;         % (m3) / (m3)
            Ix  =  44.0599e-4; Iy     =  7.6009e-4;   % (m4) / (m4)
            raiogx     =  0.2739;
            
        elseif x(i)==66 % perfil CVS 650 x 416    /66
            Nome='Perfil CVS 650 x 416';
            d   =  0.650;      Massa  =  416.4;     %  (m) / (kg/m)
            Bf  =  0.450;      Area      =  5.304e-2;  %  (m) / (m2)
            Zx  =  14.007e-3;  Zy     =  0;         % (m3) / (m3)
            Ix  =  40.4065e-4;  Iy     =  6.8396e-4;   % (m4) / (m4)
            raiogx     =  0.2760;
            
        elseif x(i)==67 % perfil CVS 650 x 366     /67
            Nome='Perfil CVS 650 x 366';
            d   =  0.650;      Massa  =  366.0;     %  (m) / (kg/m)
            Bf  =  0.450;      Area      =  4.663e-2;  %  (m) / (m2)
            Zx  =  12.187e-3;  Zy     =  0;         % (m3) / (m3)
            Ix  =  35.2421e-4; Iy     =  5.7007e-4;   % (m4) / (m4)
            raiogx     =  0.2749;
            
        elseif x(i)==68 % perfil CVS 650 x 351     /68
            Nome='Perfil CVS 650 x 351';
            d   =  0.650;      Massa  =  350.7;     %  (m) / (kg/m)
            Bf  =  0.450;      Area      =  4.468e-2;  %  (m) / (m2)
            Zx  =  11.906e-3;  Zy     =  0;         % (m3) / (m3)
            Ix  =  34.7034e-4; Iy     =  5.6986e-4;   % (m4) / (m4)
            raiogx     =  0.2787;
            
        elseif x(i)==69 % perfil CVS 650 x 326     /69
            Nome='Perfil CVS 650 x 326';
            d   =  0.650;      Massa  =  325.8;     %  (m) / (kg/m)
            Bf  =  0.450;      Area      =  4.150e-2;  %  (m) / (m2)
            Zx  =  10.697e-3;  Zy     =  0;         % (m3) / (m3)
            Ix  =  30.9117e-4; Iy     =  4.7896e-4;   % (m4) / (m4)
            raiogx     =  0.2729;
            
        elseif x(i)==70 % perfil CVS 650 x 310     /70
            Nome='Perfil CVS 650 x 310';
            d   =  0.650;      Massa  =  310.1;     %  (m) / (kg/m)
            Bf  =  0.450;      Area      =  3.950e-2;  %  (m) / (m2)
            Zx  =  10.404e-3;  Zy     =  0;         % (m3) / (m3)
            Ix  =  30.3386e-4; Iy     =  4.7874e-4;   % (m4) / (m4)
            raiogx     =  0.2771;
            
        elseif x(i)==71 % perfil CVS 650 x 282     /71
            Nome='Perfil CVS 650 x 282';
            d   =  0.650;      Massa  =  282.1;     %  (m) / (kg/m)
            Bf  =  0.450;      Area      =  3.594e-2;  %  (m) / (m2)
            Zx  =  9.047e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  26.0164e-4; Iy     =  3.8025e-4;   % (m4) / (m4)
            raiogx     =  0.2691;
            
        elseif x(i)==72 % perfil CVS 650 x 266     /72
            Nome='Perfil CVS 650 x 266';
            d   =  0.650;      Massa  =  266.1;     %  (m) / (kg/m)
            Bf  =  0.450;      Area      =  3.390e-2;  %  (m) / (m2)
            Zx  =  8.741e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  25.4044e-4; Iy     =  3.8003e-4;   % (m4) / (m4)
            raiogx     =  0.2738;
            
        elseif x(i)==73 % perfil CVS 650 x 252     /73
            Nome='Perfil CVS 650 x 252';
            d   =  0.650;      Massa  =  252.0;     %  (m) / (kg/m)
            Bf  =  0.450;      Area      =  3.210e-2;  %  (m) / (m2)
            Zx  =  8.471e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  24.8644e-4; Iy     =  3.7989e-4;   % (m4) / (m4)
            raiogx     =  0.2783;
            
        elseif x(i)==74 % perfil CVS 650 x 234     /74
            Nome='Perfil CVS 650 x 234';
            d   =  0.650;      Massa  =  234.3;     %  (m) / (kg/m)
            Bf  =  0.450;      Area      =  2.984e-2;  %  (m) / (m2)
            Zx  =  7.791e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  22.8156e-4; Iy     =  3.4041e-4;   % (m4) / (m4)
            raiogx     =  0.2765;
            
        elseif x(i)==75 % perfil CVS 650 x 211     /75
            Nome='Perfil CVS 650 x 211';
            d   =  0.650;      Massa  =  211.1;     %  (m) / (kg/m)
            Bf  =  0.450;      Area      =  2.689e-2;  %  (m) / (m2)
            Zx  =  6.893e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  20.0828e-4; Iy     =  2.8877e-4;   % (m4) / (m4)
            raiogx     =  0.2733;
            
        elseif x(i)==76 % perfil CVS 600 x 412     /76
            Nome='Perfil CVS 600 x 412';
            d   =  0.600;      Massa  =  412.1;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  5.250e-2;  %  (m) / (m2)
            Zx  =  12.563e-3;  Zy     =  0;         % (m3) / (m3)
            Ix  =  329375e-4;  Iy     =  5.3398e-4;   % (m4) / (m4)
            raiogx     =  0.2505;
            
        elseif x(i)==77 % perfil CVS 600 x 372     /77
            Nome='Perfil CVS 600 x 372';
            d   =  0.600;      Massa  =  372.3;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  4.742e-2;  %  (m) / (m2)
            Zx  =  11.447e-3;  Zy     =  0;         % (m3) / (m3)
            Ix  =  30.2592e-4; Iy     =  4.8048e-4;   % (m4) / (m4)
            raiogx     =  0.2526;
            
        elseif x(i)==78 % perfil CVS 600 x 339     /78
            Nome='Perfil CVS 600 x 339';
            d   =  0.600;      Massa  =  338.5;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  4.313e-2;  %  (m) / (m2)
            Zx  =  10.160e-3;  Zy     =  0;         % (m3) / (m3)
            Ix  =  26.7803e-4; Iy     =  4.0068e-4;   % (m4) / (m4)
            raiogx     =  0.2492;
            
        elseif x(i)==79 % perfil CVS 600 x 328     /79
            Nome='Perfil CVS 600 x 328';
            d   =  0.600;      Massa  =  327.8;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  4.176e-2;  %  (m) / (m2)
            Zx  =  9.981e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  26.4668e-4; Iy     =  4.0049e-4;   % (m4) / (m4)
            raiogx     =  0.2518;
            
        elseif x(i)==80 % perfil CVS 600 x 292     /80
            Nome='Perfil CVS 600 x 292';
            d   =  0.600;      Massa  =  292.2;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  3.723e-2;  %  (m) / (m2)
            Zx  =  8.778e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  23.2726e-4; Iy     =  3.3650e-4;   % (m4) / (m4)
            raiogx     =  0.2500;
            
        elseif x(i)==81 % perfil CVS 600 x 278     /81
            Nome='Perfil CVS 600 x 278';
            d   =  0.600;      Massa  =  277.9;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  3.540e-2;  %  (m) / (m2)
            Zx  =  8.533e-3;   Zy     =  0;  % (m3) / (m3)
            Ix  =  22.8338e-4; Iy     =  3.3631e-4;   % (m4) / (m4)
            raiogx     =  0.2540;
            
        elseif x(i)==82 % perfil CVS 600 x 239     /82
            Nome='Perfil CVS 600 x 239';
            d   =  0.600;      Massa  =  239.0;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  3.045e-2;  %  (m) / (m2)
            Zx  =  7.187e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  19.1759e-4; Iy     =  2.6698e-4;   % (m4) / (m4)
            raiogx     =  0.2509;
            
        elseif x(i)==83 % perfil CVS 600 x 226     /83
            Nome='Perfil CVS 600 x 226';
            d   =  0.600;      Massa  =  226.1;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  2.880e-2;  %  (m) / (m2)
            Zx  =  6.960e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  18.7600e-4; Iy     =  2.6685e-4;   % (m4) / (m4)
            raiogx     =  0.2552;
            
        elseif x(i)==84 % perfil CVS 600 x 210     /84
            Nome='Perfil CVS 600 x 210';
            d   =  0.600;      Massa  =  210.4;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  2.680e-2;  %  (m) / (m2)
            Zx  =  6.408e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  17.2356e-4; Iy     =  2.3912e-2;   % (m4) / (m4)
            raiogx     =  0.2536;
            
        elseif x(i)==85 % perfil CVS 600 x 190     /85
            Nome='Perfil CVS 600 x 190';
            d   =  0.600;      Massa  =  2189.9;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  2.419e-2;   %  (m) / (m2)
            Zx  =  5.679e-3;   Zy     =  0;          % (m3) / (m3)
            Ix  =  15.1986e-4; Iy     =  2.0286e-4;   % (m4) / (m4)
            raiogx     =  0.2506;
            
        elseif x(i)==86 % perfil CVS 550 x 373     /86
            Nome='Perfil CVS 550 x 373';
            d   =  0.550;      Massa  =  372.9;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  4.750e-2;  %  (m) / (m2)
            Zx  =  10.413e-3;  Zy     =  0;         % (m3) / (m3)
            Ix  =  25.0408e-4; Iy     =  4.8060e-4;   % (m4) / (m4)
            raiogx     =  0.2296;
            
        elseif x(i)==87 % perfil CVS 550 x 363     /87
            Nome='Perfil CVS 550 x 363';
            d   =  0.550;      Massa  =  363.5;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  4.630e-2;  %  (m) / (m2)
            Zx  =  10.275e-3;  Zy     =  0;         % (m3) / (m3)
            Ix  =  24.8299e-4; Iy     =  4.8043e-4;   % (m4) / (m4)
            raiogx     =  0.2316;
            
        elseif x(i)==88 % perfil CVS 550 x 329     /88
            Nome='Perfil CVS 550 x 329';
            d   =  0.550;      Massa  =  328.7;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  4.188e-2;  %  (m) / (m2)
            Zx  =  9.098e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  21.9671e-4; Iy     =  4.0062e-4;   % (m4) / (m4)
            raiogx     =  0.2290;
            
        elseif x(i)==89 % perfil CVS 550 x 319     /89
            Nome='Perfil CVS 550 x 319';
            d   =  0.550;      Massa  =  319.0;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  4.064e-2;  %  (m) / (m2)
            Zx  =  8.951e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  21.7349e-4; Iy     =  4.0044e-4;   % (m4) / (m4)
            raiogx     =  0.2313;
            
        elseif x(i)==90 % perfil CVS 550 x 293     /90
            Nome='Perfil CVS 550 x 293';
            d   =  0.550;      Massa  =  293.4;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  3.738e-2;  %  (m) / (m2)
            Zx  =  8.015e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  19.3642e-4; Iy     =  3.3663e-4;   % (m4) / (m4)
            raiogx     =  0.2276;
            
        elseif x(i)==91 % perfil CVS 550 x 283     /91
            Nome='Perfil CVS 550 x 283';
            d   =  0.550;      Massa  =  283.5;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  3.611e-2;  %  (m) / (m2)
            Zx  =  7.861e-3;   Zy     =  0;  % (m3) / (m3)
            Ix  =  19.1139e-4; Iy     =  3.3646e-4;   % (m4) / (m4)
            raiogx     =  0.2301;
            
        elseif x(i)==92 % perfil CVS 550 x 270     /92
            Nome='Perfil CVS 550 x 270';
            d   =  0.550;      Massa  =  270.5;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  3.445e-2;  %  (m) / (m2)
            Zx  =  7.660e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  18.7867e-4; Iy     =  3.3628e-4;   % (m4) / (m4)
            raiogx     =  0.2335;
            
        elseif x(i)==93 % perfil CVS 550 x 245     /93
            Nome='Perfil CVS 550 x 245';
            d   =  0.550;      Massa  =  244.9;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  3.120e-2;  %  (m) / (m2)
            Zx  =  6.650e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  16.1250e-4; Iy     =  2.6713e-4;   % (m4) / (m4)
            raiogx     =  0.2273;
            
        elseif x(i)==94 % perfil CVS 550 x 232     /94
            Nome='Perfil CVS 550 x 232';
            d   =  0.550;      Massa  =  231.6;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  2.950e-2;  %  (m) / (m2)
            Zx  =  6.438e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  15.7708e-4; Iy     =  2.6695e-4;   % (m4) / (m4)
            raiogx     =  0.2312;
            
        elseif x(i)==95 % perfil CVS 550 x 220     /95
            Nome='Perfil CVS 550 x 220';
            d   =  0.550;      Massa  =  219.8;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  2.80e-2;   %  (m) / (m2)
            Zx  =  6.250e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  15.4583e-4; Iy     =  2.6684e-4;   % (m4) / (m4)
            raiogx     =  0.2350;
            
        elseif x(i)==96 % perfil CVS 550 x 204     /96
            Nome='Perfil CVS 550 x 204';
            d   =  0.550;      Massa  =  204.1;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  2.60e-2;   %  (m) / (m2)
            Zx  =  5.748e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  14.1973e-4; Iy     =  2.3911e-4;   % (m4) / (m4)
            raiogx     =  0.2337;
            
        elseif x(i)==97 % perfil CVS 550 x 184     /97
            Nome='Perfil CVS 550 x 184';
            d   =  0.550;      Massa  =  183.6;     %  (m) / (kg/m)
            Bf  =  0.400;      Area      =  2.339e-2;  %  (m) / (m2)
            Zx  =  5.084e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  12.5087e-4; Iy     =  2.0284e-4;   % (m4) / (m4)
            raiogx     =  0.2312;
            
        elseif x(i)==98 % perfil CVS 500 x 319     /98
            Nome='Perfil CVS 500 x 319';
            d   =  0.500;      Massa  =  319.4;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  4.068e-2;  %  (m) / (m2)
            Zx  =  8.108e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  17.6429e-4; Iy     =  3.2195e-4;   % (m4) / (m4)
            raiogx     =  0.2082;
            
        elseif x(i)==99 % perfil CVS 500 x 281     /99
            Nome='Perfil CVS 500 x 281';
            d   =  0.500;      Massa  =  208.8;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  3.577e-2;  %  (m) / (m2)
            Zx  =  7.082e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  15.5013e-4; Iy     =  2.6837e-4;   % (m4) / (m4)
            raiogx     =  0.2082;
            
        elseif x(i)==100 % perfil CVS 500 x 259     /100
            Nome='Perfil CVS 500 x 259';
            d   =  0.500;      Massa  =  258.9;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  3.298e-2;  %  (m) / (m2)
            Zx  =  6.359e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  13.8564e-4; Iy     =  2.2566e-4;   % (m4) / (m4)
            raiogx     =  0.2050;
            
        elseif x(i)==101 % perfil CVS 500 x 250     /101
            Nome='Perfil CVS 500 x 250';
            d   =  0.500;      Massa  =  249.9;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  3.184e-2;  %  (m) / (m2)
            Zx  =  6.235e-3;   Zy     =  0;  % (m3) / (m3)
            Ix  =  13.6755e-4; Iy     =  2.2550e-4;   % (m4) / (m4)
            raiogx     =  0.2072;
            
        elseif x(i)==102 % perfil CVS 500 x 238     /102
            Nome='Perfil CVS 500 x 238';
            d   =  0.500;      Massa  =  238.3;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  3.035e-2;  %  (m) / (m2)
            Zx  =  6.072e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  13.4391e-4; Iy     =  2.2534e-4;   % (m4) / (m4)
            raiogx     =  0.2104;
            
        elseif x(i)==103 % perfil CVS 500 x 217     /103
            Nome='Perfil CVS 500 x 217';
            d   =  0.500;      Massa  =  216.5;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  2.758e-2;  %  (m) / (m2)
            Zx  =  5.290e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  11.5812e-4; Iy     =  1.7907e-4;   % (m4) / (m4)
            raiogx     =  0.2049;
            
        elseif x(i)==104 % perfil CVS 500 x 204     /104
            Nome='Perfil CVS 500 x 204';
            d   =  0.500;      Massa  =  204.5;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  2.605e-2;  %  (m) / (m2)
            Zx  =  5.118e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  11.3230e-4; Iy     =  1.7890e-4;   % (m4) / (m4)
            raiogx     =  0.2085;
            
        elseif x(i)==105 % perfil CVS 500 x 194     /105    
            Nome='Perfil CVS 500 x 194';
            d   =  0.500;      Massa  =  193.9;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  2.470e-2;  %  (m) / (m2)
            Zx  =  4.966e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  11.0952e-4; Iy     =  1.7880e-4;   % (m4) / (m4)
            raiogx     =  0.2119;
            
        elseif x(i)==106 % perfil CVS 500 x 180     /106    
            Nome='Perfil CVS 500 x 180';
            d   =  0.500;      Massa  =  180.3;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  2.296e-2;  %  (m) / (m2)
            Zx  =  4.573e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  10.2058e-4; Iy     =  1.6022e-4;   % (m4) / (m4)
            raiogx     =  0.2108;
            
        elseif x(i)==107 % perfil CVS 500 x 162     /107
            Nome='Perfil CVS 500 x 162';
            d   =  0.500;      Massa  =  162.4;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  2.069e-2;  %  (m) / (m2)
            Zx  =  4.052e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  9.0116e-4;  Iy     =  1.3593e-4;   % (m4) / (m4)
            raiogx     =  0.2087;
            
        elseif x(i)==108 % perfil CVS 500 x 150     /108
            Nome='Perfil CVS 500 x 150';
            d   =  0.500;      Massa  =  149.7;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  1.908e-2;  %  (m) / (m2)
            Zx  =  3.866e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  8.7240e-4;   Iy     =  1.3585e-4;   % (m4) / (m4)
            raiogx     =  0.2139;
            
        elseif x(i)==109 % perfil CVS 500 x 134     /109
            Nome='Perfil CVS 500 x 134';
            d   =  0.500;      Massa  =  133.8;     %  (m) / (kg/m)
            Bf  =  0.350;      Area      =  1.705e-2;  %  (m) / (m2)
            Zx  =  3.395e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  7.6293e-4;   Iy     =  1.1441e-4;   % (m4) / (m4)
            raiogx     =  0.2115;
            
        elseif x(i)==110 % perfil CVS 450 x 216     /110
            Nome='Perfil CVS 450 x 216';
            d   =  0.450;      Massa  =  216.4;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  2.757e-2;  %  (m) / (m2)
            Zx  =  4.794e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  9.3730e-4;   Iy     =  1.4211e-4;   % (m4) / (m4)
            raiogx     =  0.1844;
            
        elseif x(i)==111 % perfil CVS 450 x 206     /111
            Nome='Perfil CVS 450 x 206';
            d   =  0.450;      Massa  =  206.1;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  2.625e-2;  %  (m) / (m2)
            Zx  =  4.666e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  9.2088e-4;  Iy     =  1.4197e-4;   % (m4) / (m4)
            raiogx     =  0.1873;
            
        elseif x(i)==112 % perfil CVS 450 x 188     /112
            Nome='Perfil CVS 450 x 188';
            d   =  0.450;      Massa  =  188.1;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  2.396e-2;  %  (m) / (m2)
            Zx  =  4.084e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  7.9759e-4;  Iy     =  1.1287e-4;   % (m4) / (m4)
            raiogx     =  0.1825;
            
        elseif x(i)==113 % perfil CVS 450 x 177     /113
            Nome='Perfil CVS 450 x 177';
            d   =  0.450;      Massa  =  177.4;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  2.260e-2;  %  (m) / (m2)
            Zx  =  3.948e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  7.7946e-4;  Iy     =  1.1273e-4;   % (m4) / (m4)
            raiogx     =  0.1857;
            
        elseif x(i)==114 % perfil CVS 450 x 168     /114
            Nome='Perfil CVS 450 x 168';
            d   =  0.450;      Massa  =  168.0;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  2.140e-2;  %  (m) / (m2)
            Zx  =  3.828e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  7.6346e-4;  Iy     =  1.1264e-4;   % (m4) / (m4)
            raiogx     =  0.1889;
            
        elseif x(i)==115 % perfil CVS 450 x 156     /115
            Nome='Perfil CVS 450 x 156';
            d   =  0.450;      Massa  =  156.4;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  1.992e-2;  %  (m) / (m2)
            Zx  =  3.530e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  7.0362e-4;  Iy     =  1.0094e-4;   % (m4) / (m4)
            raiogx     =  0.1879;
            
        elseif x(i)==116 % perfil CVS 450 x 141     /116
            Nome='Perfil CVS 450 x 141';
            d   =  0.450;      Massa  =  141.2;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  1.799e-2;  %  (m) / (m2)
            Zx  =  3.136e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  6.2301e-4;  Iy     =  0.8564e-4;   % (m4) / (m4)
            raiogx     =  0.1861;
            
        elseif x(i)==117 % perfil CVS 450 x 130     /117
            Nome='Perfil CVS 450 x 130';
            d   =  0.450;      Massa  =  139.9;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  1.655e-2;  %  (m) / (m2)
            Zx  =  2.987e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  6.0261e-4;  Iy     =  0.8557e-4;   % (m4) / (m4)
            raiogx     =  0.1908;
            
        elseif x(i)==118 % perfil CVS 450 x 116     /118
            Nome='Perfil CVS 450 x 116';
            d   =  0.450;      Massa  =  116.4;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  1.483e-2;  %  (m) / (m2)
            Zx  =  2.629e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  5.2834e-4;  Iy     =  0.7207e-4;   % (m4) / (m4)
            raiogx     =  0.1888;
            
        elseif x(i)==119 % perfil CVS 400 x 162     /119
            Nome='Perfil CVS 400 x 162';
            d   =  0.400;      Massa  =  161.7;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  2.060e-2;  %  (m) / (m2)
            Zx  =  3.303e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  5.8529e-4;  Iy     =  1.1262e-4;   % (m4) / (m4)
            raiogx     =  0.1686;
            
        elseif x(i)==120 % perfil CVS 400 x 152     /120
            Nome='Perfil CVS 400 x 152';
            d   =  0.400;      Massa  =  152.1;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  1.938e-2;  %  (m) / (m2)
            Zx  =  3.195e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  5.7279e-4;  Iy     =  1.1256e-4;   % (m4) / (m4)
            raiogx     =  0.1719;
            
        elseif x(i)==121 % perfil CVS 400 x 140     /121
            Nome='Perfil CVS 400 x 140';
            d   =  0.400;      Massa  =  140.4;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  1.788e-2;  %  (m) / (m2)
            Zx  =  2.932e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  5.2632e-4;  Iy     =  1.0056e-4;   % (m4) / (m4)
            raiogx     =  0.1716;
            
        elseif x(i)==122 % perfil CVS 400 x 125     /122
            Nome='Perfil CVS 400 x 125';
            d   =  0.400;      Massa  =  125.0;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  1.593e-2;  %  (m) / (m2)
            Zx  =  2.581e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  4.6347e-4;  Iy     =  0.8556e-4;   % (m4) / (m4)
            raiogx     =  0.1706;
            
        elseif x(i)==123 % perfil CVS 400 x 116     /123
            Nome='Perfil CVS 400 x 116';
            d   =  0.400;      Massa  =  116.5;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  1.484e-2;  %  (m) / (m2)
            Zx  =  2.483e-3;   Zy     =  0;         % (m3) / (m3)
            Ix  =  4.5161e-4;  Iy     =  0.8553e-4;   % (m4) / (m4)
            raiogx     =  0.1745;
            
        elseif x(i)==124 % perfil CVS 400 x 103     /124
            Nome='Perfil CVS 400 x 103';
            d   =  0.400;      Massa  =  102.8;     %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  1.310e-2;  %  (m) / (m2)
            Zx  =  2.165e-3;   Zy     =  0;         %  (m3) / (m3)
            Ix  =  3.9355e-4;  Iy     =  0.7203e-4;   % (m4) / (m4)
            raiogx     =  0.1734;
            
        elseif x(i)== 125% perfil CVS 400 x 87     /125
            Nome='Perfil CVS 400 x 87';
            d   =  0.400;      Massa  =  86.8;      %  (m) / (kg/m)
            Bf  =  0.300;      Area      =  1.106e-2;  %  (m) / (m2)
            Zx  =  1.787e-3;   Zy     =  0;         %  (m3) / (m3)
            Ix  =  3.2309e-4;  Iy     =  5.628e-5;   % (m4) / (m4)
            raiogx     =  0.1710;
            
        elseif x(i)==126 % perfil CVS 350 x 136     /126
            Nome='Perfil CVS 350 x 136';
            d   =  0.350;      Massa  =  135.8;     %  (m) / (kg/m)
            Bf  =  0.250;      Area      =  1.730e-2;  %  (m) / (m2)
            Zx  =  2.391e-3;   Zy     =  0;         %  (m3) / (m3)
            Ix  =  3.6673e-4;  Iy     =  6.521e-5;   % (m4) / (m4)
            raiogx     =  0.1456;
            
        elseif x(i)==127 % perfil CVS 350 x 128     /127
            Nome='Perfil CVS 350 x 128';
            d   =  0.350;      Massa  =  127.6;     %  (m) / (kg/m)
            Bf  =  0.250;      Area      =  1.625e-2;  %  (m) / (m2)
            Zx  =  4.7491e-3;  Zy     =  0;         %  (m3) / (m3)
            Ix  =  3.5885e-4;  Iy     =  6.515e-5;   % (m4) / (m4)
            raiogx     =  0.1486;
            
        elseif x(i)==128 % perfil CVS 350 x 118     /128
            Nome='Perfil CVS 350 x 118';
            d   =  0.350;      Massa  =  117.9;     %  (m) / (kg/m)
            Bf  =  0.250;      Area      =  1.502e-2;  %  (m) / (m2)
            Zx  =  2.126e-3;   Zy     =  0;         %  (m3) / (m3)
            Ix  =  3.3058e-4;  Iy     =  5.838e-5;   % (m4) / (m4)
            raiogx     =  0.1484;    
        
    end
    
    Mostrar{i,1}=(Nome);
    Mostrar{i,2}=table(d,Bf,Zx,Ix,Massa,Area,Zy,Iy,raiogx);
      
end
if Ix<0, 
    disp( '******* Ix negativo');
    keyboard;
end
end
