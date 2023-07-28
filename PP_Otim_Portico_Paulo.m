% Programa Principal de Otimização
% Pórticos Planos com ligações rígidas
% Engenheiro Paulo César G.P de Oliveira
% Data início: 09/10/2018
% Última alteração: 
%%
%nvar_perfis - número de perfis utilizados na estrutura
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
!del restrições_otimização.txt
!del minimo_peso_otimização.txt
!del media_peso_otimização.txt
!del GA.png
!del otimização.png


disp('DIMENSIONAMETO ÓTIMO DE PÓRTICOS PLANO DE AÇO')
disp('Digite o código do exemplo escolhido')
disp('1 Pórtico de Simões 1996 com 2 pavimentos e uma baia, ligação rígida') 
disp('2 Pórtico de Simões 1996 com 2 pavimentos e uma baia, ligação semirrígida') 
disp('3 Pórtico de Sanchez 2013 com 2 pavimentos e três baias, ligação rígida') 
disp('4 Pórtico de Sanchez 2013 com 2 pavimentos e três baias, ligação semirrígida') 
disp('5 Pórtico de Simoes 1996 com 3 pavimentos e duas baias, ligação rígida') 
disp('6 Pórtico de Simoes 1996 com 3 pavimentos e duas baias, ligação semirrígida') 

metodo= input('');

switch (metodo)
    case {1}
        disp ('#Pórtico de Simões 1996 com 2 pavimentos e uma baia, ligação rígida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\simoes1\*.*
    case {2}
        disp ('#Pórtico de Simões 1996 com 2 pavimentos e uma baia, ligação semirrígida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\simoes2\*.*
     case {3}
        disp ('#Pórtico de Sanchez 2013 com 2 pavimentos e três baias, ligação rígida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\sanchez1\*.*  
    case  {4}
        disp ('#Pórtico de Sanchez 2013 com 2 pavimentos e três baias, ligação semirrígida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\sanchez2\*.* 
     case {5}
        disp ('#Pórtico de Simoes 1996 com 3 pavimentos e duas baias, ligação rígida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\simoes31\*.*  
    case  {6}
        disp ('#Pórtico de Simoes 1996 com 3 pavimentos e duas baias, ligação semirrígida#')
        !copy C:\Users\Paulo\Desktop\Programa_Paulo\simoes32\*.*             
end

arq_name='dados_da_estrutura.dat';% Nome do Arquivo de texto 
                                 %com os dados de entrada do pórtico
                                 
% Propriedades por grupo de elementos (VP_perfis)
% Plotagem do pórtico a ser analisado
[Edof,ep,ex,ey,Nels,nvigas,N_Nos,tipo,n_grupo,...
    grupo,coord,incid,Id_Grupo_lsr, nvar_lsr,...
    Hmax,ncol,Ef_coluna,Ef_viga,n_ansys]=Dados_Estrutura(arq_name); 

% Propriedaes de cada elemento para calculo do dimensionamento 
[E_aco, Ix_elem, Massa_perfil,fy]=Propriedades_elementos();

%% Cálculo do comprimento das barras
[L,I_vigas,L_vigas]=comprimento_barras();

%% DEFINICAO DAS VARIAVEIS DE PROJETO

[ lb,ub ] = Limites_VPs();
% Forma geral pra qualquer exemplo
vars_int=(1:nvars); 
                  
%% Configuração do Algoritmo Genético 
Peso_individuosob=0; % Matriz com os pesos dos individuos que atendem as restrições em cada geração
Contadorob=0;        % Contador dos individuos que atendem as restrições em cada geração
Contad_G=0;          % Irá contar o numero de gerações
Contador=0;          % Irá contar o numero de individuos de cada geração
populacao=50;        % Irá contar o numero da população de cada geração 
geracao=45;          % Numero de gerações
elite=15;            % Numero dos melhores individuos que irá passar para prox geração

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

fprintf ('\n \n ##### Variaveis de Projeto Ótimas ##### \n ');
fprintf ('\n ==> Perfis Ótimos: ');
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

% Escrever valores de média e minimo em um arquivo para cada geração na
% pasta resultado
fid = fopen('media_peso_otimização.txt','w');
fprintf(fid,'%10.2f\n',mediasplot);
fclose(fid);
fid = fopen('minimo_peso_otimização.txt','w');
fprintf(fid,'%10.2f\n',miniplot);
fclose(fid);

[Peso,Peso_lsr,Peso_perfis]=peso_otimo(xbest);
custo=Peso*1.6; % 1,6 seria referente ao Euro, pode mudar para Real porém é necessário 
% verificar qual seria o valor do custo unitário do aço
fprintf('\nO Valor Ótimo da Função Objetivo [kg] = %g\n', fval);
fprintf ('\n A massa equivalente do portico:[kg]= %g\n', Peso);
fprintf('\n O custo total da estrutura é: [R$] %g\n', custo);

%% ANALISE DE RESULTADOS
%Verificacao das restricoes na solucao ótima: "xbest"
[c, ceq] = Fun_restricoes(xbest);
fid = fopen('restrições_otimização.txt','w');
fprintf(fid,'%10.2f\n',c);
fclose(fid);
figure
bar3(c);
title('Valor das Restricoes na Configuração Ótima');
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
