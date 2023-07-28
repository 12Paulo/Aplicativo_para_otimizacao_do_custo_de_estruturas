
function [ lb,ub ]=Limites_VPs()

global nvar_perfis nvar_lsr E_aco L_vigas n_grupo 
global nvars 

% nvar_perfis - número de perfis utilizados na estrutura
% nvar_lsr- numero de variaveis de rigidez das ligacoes
% E_aco - módulo de elasticidade do aço
% Ix_min - Momento de inércia mínimo (Banco de dados)
% Ix_max - Momento de inércia máximo (Banco de dados)
% Lmin - comprimento minimo das vigas
% Lmax - comprimento máximo das vigas 

 %Rmin=0.5*E_aco*Ix_min/Lmax;   %limite inferior p/ ligação flexivel
 %Rmax=25*E_aco*Ix_max/Lmin;    %limite superior p/ ligação flexivel

 %rmin = 1/(1+(3*E_aco*Ix_min/Rmin*Lmax));
 %rmax = 1/(1+(3*E_aco*Ix_max/Rmax*Lmin));
 %lb = [1 1 Rmin Rmin];          %Limite inferior p/c grupo e Lig rotulada???
 %ub = [128 128 Rmax Rmax];  %Limite maximo p/c grupo e Lig rotulada???

% 1) Perfis estruturais
nvar_perfis=n_grupo;            %Numero de VP perfis / ngrupos     
nvars=nvar_perfis + nvar_lsr;   %Numero de variaveis de projeto

%momentos de inercia maximo e minimo da tabela de perfis (1 e 128)
Ix_min  = 6.35e-6;       % perfil I 150 x 13.0(m4)
Ix_max  = 32.9375e-4;    % perfil CVS 600 x 412 
E1=E_aco(1);

Lmin= min(L_vigas);      %comprimento min viga
Lmax= max(L_vigas);      %comprimento max viga

%limites das VP p/ perfis
 lim_min_VP_perfis(1:nvar_perfis) = 1;    %O menor perfil no Banco de dados
 lim_max_VP_perfis(1:nvar_perfis) = 64;   %O maior perfil no Banco de dados
 
 %limites inferior p/ ligações flexiveis
 Rmin=0.5*E1*Ix_min/Lmax;  %limite inferior p/ ligação flexivel
 Rmax=25*E1*Ix_max/Lmin;   %limite superior p/ ligação rígida
 
 %rmin = 1/(1+(3*E1*Ix_min/(Rmin*Lmax))); % fator de rigidez mínimo (0,13)
 %rmax = 1/(1+(3*E1*Ix_max/(Rmax*Lmin))); % fator de rigidez máximo (0,89)
 % O fator de rigidez ira variar de 0,13:0,1:0,89
 % 0,13 0,23 0,33 0,43 0,53 0,63 0,73 0,83
 % Logo tera 8 possíveis valores para o fator de rigidez
 lim_min_VP_lsr(1:nvar_lsr) = 1;
 lim_max_VP_lsr(1:nvar_lsr) = 16;
 
 %LIMITES sobre as VPS        
 lb = [lim_min_VP_perfis lim_min_VP_lsr]; 
 ub = [lim_max_VP_perfis lim_max_VP_lsr];
 
 %keyboard
 %IMPRIMIR LIMITES DAS LIGAÇÕES FLEXIVEIS
 %fprintf ('\n ### VP_lsr - Limites: \n Min = %d \n Max= %d \n',...
     %lim_min_VP_lsr(1),lim_max_VP_lsr(1));
 %pause(1);

end