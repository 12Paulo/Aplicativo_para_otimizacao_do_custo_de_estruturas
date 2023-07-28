function [c,ceq] = Fun_restricoes(x)
% Engenheiro Paulo C�sar G. P de Oliveira
%% NESTA FUN��O
% Calcula-se as cargas na estrutura
% as restri��es de projeto: Deforma��es, deslocamentos, flambagem e esfor�os
% A analise de instabilidade esta desativada (Afirmativo)

%---------INGRESSAM --------------------------------------------------
% x - Variaveis de projeto
% x=[VP_perfis  VPlsr]
%---------SAIDA ------------------------------------------------------
% c - restricoes de projeto de desigualdade
% c = [Esforco_max;g_flecha;g_DELTA_lateral;g_construtiva];
% ceq - restricoes de projeto de igualdade
% ceq = []; % No equality constraints
%% VARIAVEIS UTILIZADA NESTA FUN��O
% x - Vetor de variaveis de projeto x=[VP_perfis]
% c   -  restri��es de desigualdade
% ceq - restri��es de igualdade
% Kypilar - coeficiente de flambagem do pilar
% Kyviga - coeficiente de flecha da viga
% Instab - instabilidade
% Esforco_max - Esfor�o m�ximo no elemento
% Displace_max - deslocamento m�ximo no elemento
% Massa - massa do perfil
% d=zeros(n_grupo,1);
% A - �rea da se��o transversal
% Zx,Zy -
% Ix,Iy - momento de in�rcia
% Bf - largura da mesa do perfil
% rgx,rgy - raio de gira��o
% lambda_W - esbeltez da alma (d'/tw)
% lambda_F - esbeltez da mesa (bf/2*tf)
% tw - espessura da alma
% IxLe -  produto(momento de in�rcia e comprimento)

global Ix_elem  Massa_perfil Massa_grupo nvar_lsr
global ep  Nels  L ey incid Id_Grupo_lsr E_aco
global grupo n_grupo 
global tam_group Peso_individuosob Contadorob 
global  medias minimos Contad_G Contador Peso populacao mediasplot miniplot
%keyboard 
%% ATUALIZACAO DAS PROPRIEDADES DOS PERFIS p/ novas VP_perfis
% Identificacao das Variaveis de Projeto
n_grupo=length(grupo);  %TROCAR n_grupo X NVP_perfil ?????
VP_perfis=x(1:n_grupo);
if nvar_lsr>0
    Lsr=x(n_grupo+1:end);
    for i=1:nvar_lsr
        Fator_rigidez=(0.14:0.05:0.89); % O intervalo � de 0,13 a 0,89 para liga��o semirrigida
        % sendo assim com intervalo de 0,01 tera ao maximo 8 fatores de rigidez
        R_Lsr(1,i)=Fator_rigidez(Lsr(1,i));
    end
else
    VP_lsr=0;
end
% VP_lsr=x(NVP_perfil+1:NVP_perfil+NVP_lsr);
%Inicializacao dos vetores com zeros
% Instab=zeros(Nels,1);
%Esforco_max = zeros(Nels,1); %Displace_max = zeros(Nels,1); ERRADO!!!
Massa_grupo=zeros(n_grupo,1);
d=zeros(n_grupo,1);A=zeros(n_grupo,1);
Zx=zeros(n_grupo,1); Zy=zeros(n_grupo,1);
Ix_grupo=zeros(n_grupo,1); Iy=zeros(n_grupo,1);
Bf=zeros(n_grupo,1); tw=zeros(n_grupo,1);
rgx=zeros(n_grupo,1);rgy=zeros(n_grupo,1);
lambda_W=zeros(n_grupo,1);lambda_F=zeros(n_grupo,1);
IxLe= zeros(Nels,1);
%Kx=zeros(Nels,1);

[Massa_grupo,~,A,Zx,Ix_grupo,~,~,~,rgx,~,lambda_W,lambda_F,tw] = ...
    Mapa_Perfil_128_real(VP_perfis,Massa_grupo,...
    d,A,Zx,Ix_grupo,Bf,Zy,Iy,rgx,rgy,lambda_W,lambda_F,tw);

%% ATUALIZA AS PROPRIEDADES DO PERFIL
for i=1:n_grupo
    tam_group=max(size(grupo{i})); %quantidade de elementos em cada grupo
    for j=1:tam_group
        ep(grupo{i}(j),2)=A(i);
        ep(grupo{i}(j),3)=Ix_grupo(i); % Propriedades do perfil
        Ix_elem(grupo{i}(j))=Ix_grupo(i);
        Massa_perfil(grupo{i}(j))=Massa_grupo(i);  %Massa dos perfis
        %C�culo de Ix/L de cada barra para calcular Ga e Gb.
        IxLe(grupo{i}(j))=(ep(grupo{i}(j),3)/L(grupo{i}(j))); %p/calculo de Kx
    end
end
if nvar_lsr>0      
    for i = 1:Nels
    %Calculo da massa equivalente das ligacoes semirrigidas
    if (ey(i,1) - ey(i,2))==0   % massa equivalente de c/viga
        No_inicial= incid(i,2);
        No_final= incid(i,3);
        r1=R_Lsr(1,Id_Grupo_lsr(No_inicial,2));
        R1=(3*E_aco(i)*Ix_elem(i)*r1)/((1-r1)*L(i));
        r2=R_Lsr(1,Id_Grupo_lsr(No_final,2));
        R2=(3*E_aco(i)*Ix_elem(i)*r2)/((1-r2)*L(i));
        Z(i,1)=R1;
        Z(i,2)=R2;
        VP_lsr(Id_Grupo_lsr(No_inicial,2),1)=R1;
    end
    end 
end
%for i=1:nvigas
%VP_lsr(i,1)=3*R_Lsr(1,i)*ep(i,1)*Ix_elem(Ef_viga(i,1),1)/(L_vigas(i,1)*(1-R_Lsr(1,i))); % Transformar o fator de rigidez  
%para Rigidez inicial da liga��o
[Peso]=Peso_individuo(x);
%% CALCULO DAS SOLICITACOES
[Moment_sol,Axial_sol,flecha,delta]=Analise(A,Ix_grupo,VP_lsr);

%% Calculo do comprimento de flambagem, Kx

[K]=Comprimento_Flambagem(IxLe,VP_lsr);

%KxUsa= 1; % COMO ASSIM !!!?? N�O EST� SENDO UTILIZADO
% Verificar este Kx, pois est� calculando errado!
%% CALCULO DA RESIETNCIA p/ elemento ---------------------------
[Esforco_max]=dimensionamento_elemen(rgx,x,lambda_W,Zx,A,tw,lambda_F,Moment_sol,Axial_sol,K);

%% CALCULO DAS RESTRICOES DE PROJETO NAO LINEAR ######################
% Restricoes consideradas
% (1) Flecha nas vigas e pilares e
% (2)Deslocamento lateral maximo

%% FLECHA NAS VIGAS E PILARES ------------------------------------------
[g_flecha]=flecha_nas_vigas(flecha);

%% DESLOCAMENTO LATERAL MAXIMO -------------------------------------------
[g_DELTA_lateral]=Deslocamento_lateral(delta);

%% RESTRICOES CONSTRUTIVAS (TAMANHO DOS PILARES NA VERTICAL) -------------

%g_construtiva(1,1)=x(3)/x(1)-1;     %VER UMA FORMA P/ GENERALIZAR
%g_construtiva(2,1)=x(5)/x(1)-1; 
%g_construtiva(3,1)=x(5)/x(3)-1; 
%g_construtiva(4,1)=x(6)/x(2)-1;     %VER UMA FORMA P/ GENERALIZAR
%g_construtiva(5,1)=x(4)/x(2)-1; 
%g_construtiva(6,1)=x(6)/x(4)-1;
 
%% RESTRICOES DE PROJETO �TIMO ############################################

c =[g_flecha;g_DELTA_lateral]; %g_construtiva];
%c =[Esforco_max;g_flecha;g_DELTA_lateral;g_construtiva];
ceq = []; % No equality constraints
%% GRAFICO DE RESULTADOS DE CADA GERA��O COM INDIVIDUOS QUE ATENDEM AS RESTRI��ES
Contador=Contador + 1;
if c<0
    Contadorob=Contadorob+1;
    Peso_individuosob(Contadorob,1)=Peso;
end
if Contador == populacao
    Contad_G=Contad_G+1;
    medias=mean(Peso_individuosob);
    minimos=min(Peso_individuosob);
    mediasplot(Contad_G,1)=medias;
    miniplot(Contad_G,1)=minimos;
    figure (4);
    plot(Contad_G,medias,'ob')
    hold on
    plot(Contad_G,minimos,'*k')
    title('peso')
    print('otimiza��o','-dpng');
    print('otimiza��o','-dpng');
    hold on
    Contador=0;
    Contadorob=0;
    Peso_individuosob=0;
end
end

