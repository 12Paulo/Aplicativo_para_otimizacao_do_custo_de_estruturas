% Programa Principal de Otimiza��o
% P�rticos Planos com liga��es r�gidas
% Engenheiro Paulo C�sar G.P de Oliveira
% Data in�cio: 09/10/2018
% �ltima altera��o: 
%%
%nvar_perfis - n�mero de perfis utilizados na estrutura
%nvar_lsr- numero de VP de rigidez das ligacoes
%I_vigas - identificador do numero da viga

clear ; 
close all; 
clc
tic   %controle tempo - inicio

global Edof ep ex ey Nels tipo L fy 
global Ix_elem E_aco Massa_perfil
global n_grupo grupo coord incid 
global Id_Grupo_lsr 
global nvars N_Nos nvar_perfis nvar_lsr nvigas ncol
global arq_name 
global I_vigas
global Hmax 
global Ef_coluna Ef_viga n_ansys L_vigas
global Contad_G Contador populacao geracao elite 
global Peso_individuosob Contadorob mediasplot miniplot
%% DADOS DE ENTRADA DO PORTICO - GRAFICO
% Elimina os arquivos temporarios gerados pelo Ansys

!del file.BCS file.emat file.err file.esav  file.osav file.r001 file.db file.ldhi
!del file.full file.lock file.log file.mntr file.rst file.stat file.rdb 
!del dados_da_estrutura.dat
!del modelo_mecanico_apdl.txt
!del resultados_da_analise.dat
!del variavel_portico.txt
!del variavel_portico_0.txt
!del restri��es_otimiza��o.txt
!del minimo_peso_otimiza��o.txt
!del media_peso_otimiza��o.txt
!del GA.png
!del otimiza��o.png


disp('DIMENSIONAMETO �TIMO DE P�RTICOS PLANO DE A�O')
disp('Digite o c�digo do exemplo escolhido')
disp('1 P�rtico de Sim�es 1996 com 2 pavimentos e uma baia, liga��o r�gida') 
disp('2 P�rtico de Sim�es 1996 com 2 pavimentos e uma baia, liga��o semirr�gida') 
disp('3 P�rtico de Sanchez 2013 com 2 pavimentos e tr�s baias, liga��o r�gida') 
disp('4 P�rtico de Sanchez 2013 com 2 pavimentos e tr�s baias, liga��o semirr�gida') 
disp('5 P�rtico de Simoes 1996 com 3 pavimentos e duas baias, liga��o r�gida') 
disp('6 P�rtico de Simoes 1996 com 3 pavimentos e duas baias, liga��o semirr�gida') 

metodo= input('');

switch (metodo)
    case {1}
        disp ('#P�rtico de Sim�es 1996 com 2 pavimentos e uma baia, liga��o r�gida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\simoes1\*.*
    case {2}
        disp ('#P�rtico de Sim�es 1996 com 2 pavimentos e uma baia, liga��o semirr�gida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\simoes2\*.*
     case {3}
        disp ('#P�rtico de Sanchez 2013 com 2 pavimentos e tr�s baias, liga��o r�gida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\sanchez1\*.*  
    case  {4}
        disp ('#P�rtico de Sanchez 2013 com 2 pavimentos e tr�s baias, liga��o semirr�gida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\sanchez2\*.* 
     case {5}
        disp ('#P�rtico de Simoes 1996 com 3 pavimentos e duas baias, liga��o r�gida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\simoes31\*.*  
    case  {6}
        disp ('#P�rtico de Simoes 1996 com 3 pavimentos e duas baias, liga��o semirr�gida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\simoes32\*.*             
end

arq_name='dados_da_estrutura.dat';% Nome do Arquivo de texto 
                                 %com os dados de entrada do p�rtico
                                 
% Propriedades por grupo de elementos (VP_perfis)
% Plotagem do p�rtico a ser analisado
[Edof,ep,ex,ey,Nels,nvigas,N_Nos,tipo,n_grupo,...
    grupo,coord,incid,Id_Grupo_lsr, nvar_lsr,...
    Hmax,ncol,Ef_coluna,Ef_viga,n_ansys]=Dados_Estrutura(arq_name); 

% Propriedaes de cada elemento para calculo do dimensionamento 
[E_aco, Ix_elem, Massa_perfil,fy]=Propriedades_elementos();

%% C�lculo do comprimento das barras
[L,I_vigas,L_vigas]=comprimento_barras();

%% DEFINICAO DAS VARIAVEIS DE PROJETO

[ lb,ub ] = Limites_VPs();
% Forma geral pra qualquer exemplo
vars_int=(1:nvars); 
                  
%% Configura��o do Algoritmo Gen�tico 
Peso_individuosob=0; % Matriz com os pesos dos individuos que atendem as restri��es em cada gera��o
Contadorob=0;        % Contador dos individuos que atendem as restri��es em cada gera��o
Contad_G=0;          % Ir� contar o numero de gera��es
Contador=0;          % Ir� contar o numero de individuos de cada gera��o
populacao=50;        % Ir� contar o numero da popula��o de cada gera��o 
geracao=45;          % Numero de gera��es
elite=15;            % Numero dos melhores individuos que ir� passar para prox gera��o

options = gaoptimset(...
    'PopulationSize', populacao, ...
    'Generations', geracao, ...
    'PopulationType', 'doubleVector',...
    'EliteCount', elite, ...
    'CrossoverFraction',0.85,...
    'StallGenLimit',20,...
    'InitialPenalty', 25,...
    'PenaltyFactor', 100,... %'FitnessScalingFcn', @fitscalingshiftlinear,... %'SelectionFcn',{@selectionstochunif},...
    'TolFun', 1e-4, ...
    'TolCon', 1e-4, ...
    'PlotFcns', {@gaplotbestf},...
    'Display', 'iter');

%% ALGORITMO GENETICO

 [xbest,fval,exitflag,output,population,scores] = ga(@Fun_objtivo, nvars,[], [], [], [], lb,ub,@Fun_restricoes,vars_int,options);
print('GA','-dpng');

fprintf ('\n \n ##### Variaveis de Projeto �timas ##### \n ');
fprintf ('\n ==> Perfis �timos: ');
disp(xbest(1:n_grupo));
fprintf ('\n ==> Fatores de Rigidez:\n');
disp(xbest(n_grupo+1:end));

%% MOSTRAR RESULTADOS OBTIDOS
[Mostrar] = Mostrar_Perfil_128(xbest(1:nvar_perfis)); %Mostrar_Perfil

fprintf ('\n -------- PERFIS OTIMOS OBTIDOS: --------');
for i=1:n_grupo
    fprintf ('\n Grupo %d  ==> %s\n',i,Mostrar{i,1});
    %     disp(' ');
    %     disp(Mostrar{i,2});
end
figure
bar3(xbest(nvar_perfis+1:end));
title('Fatores de rigidez por grupo:');

% Escrever valores de m�dia e minimo em um arquivo para cada gera��o na
% pasta resultado
fid = fopen('media_peso_otimiza��o.txt','w');
fprintf(fid,'%10.2f\n',mediasplot);
fclose(fid);
fid = fopen('minimo_peso_otimiza��o.txt','w');
fprintf(fid,'%10.2f\n',miniplot);
fclose(fid);

[Peso,Peso_lsr,Peso_perfis]=peso_otimo(xbest);
custo=Peso*1.6; % 1,6 seria referente ao Euro, pode mudar para Real por�m � necess�rio 
% verificar qual seria o valor do custo unit�rio do a�o
fprintf('\nO Valor �timo da Fun��o Objetivo [kg] = %g\n', fval);
fprintf ('\n A massa equivalente do portico:[kg]= %g\n', Peso);
fprintf('\n O custo total da estrutura �: [R$] %g\n', custo);

%% ANALISE DE RESULTADOS
%Verificacao das restricoes na solucao �tima: "xbest"
[c, ceq] = Fun_restricoes(xbest);
fid = fopen('restri��es_otimiza��o.txt','w');
fprintf(fid,'%10.2f\n',c);
fclose(fid);
figure
bar3(c);
title('Valor das Restricoes na Configura��o �tima');
pause(2)

%Limites Inferiores das VPs
figure
LInf_VPs=(1-(xbest./lb));
bar3(LInf_VPs);
title('Situacao VPs - Limites Inferiores');
pause(2)

%Limites Superiores das VPs
figure
LSup_VPs=((xbest./ub)-1);
bar3(LSup_VPs);
title('Situacao VPs - Limites Superiores');
toc
