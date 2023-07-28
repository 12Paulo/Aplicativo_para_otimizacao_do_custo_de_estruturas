function [Edof,ep,ex,ey,nels,nvigas,N_Nos,tipo,n_grupo,...
    grupo,coord,incid,Id_Grupo_lsr, nvar_lsr,Hmax,ncol,...
    Ef_coluna,Ef_viga,n_ansys,rotulos]=Dados_Estrutura(arq_name)

%arq_name='P_PEZESHK_P1.dat'; %input('ingresse arquivo de dados: ','s');
fid=fopen(arq_name); %abre arquivo de dados
%fid=fopen('portico.dat');

Codigo=1;    %controle para inicio do while
%keyboard
while Codigo

    tline = fgetl(fid); % Retorna a próxima linha do arquivo 'fid'
                        % Removendo os caracteres de nova linha
    if ~ischar(tline), break, end   %identifica fim do arquivo de dados e para
                     
    if length(tline)<=5, continue, end  %identifica e pula linha em branco

    switch tline(1:5)
        case '#titu'
            le_titulo(fid);
        case '#dime'
            [nels,nvigas,n_materiais,...
                N_Nos,n_grupo,nvar_lsr,Hmax,ncol,n_ansys]=le_dimensoes(fid);
        case '#Tipo'
            [tipo]=le_tipo(fid);
        case '#Coor'
            [coord]=le_Coord(fid,N_Nos);
        case '#Inci'
            [incid]=le_incidencia(fid,nels);
        case '#Grau'
            [graus]=le_graus(fid,N_Nos);
            [Edof]=f_Edof(incid,graus,tipo);
            [ex]=f_ex(coord,incid,nels);
            [ey]=f_ey(coord,incid,nels);
        case '#mate'
            [el]=le_materiais(fid,n_materiais);
        case '#Matb'
            [ep]=f_matbarras(fid,nels,el,n_materiais);
        case '#grup'
            [grupo]=le_grupo(fid,n_grupo);
        case '#liga'
            [Id_Grupo_lsr]=le_ligacoes(fid,N_Nos);
        case '#Colu'
            [Ef_coluna]=le_ansys_colunas(fid,ncol);
         case '#Viga'
            [Ef_viga]=le_ansys_vigas(fid,nvigas);  
         case '#Exem'
            [rotulos]=le_exemplo_analisado(fid);   
        case '#fimA'
            Codigo=0; %fim do arquivo
    end
end
fclose(fid);

%% Grafico do portico
figure; grid on;
title ('### PORTICO DE AÇO ###');
t_y=max(max(ey));         %limites do grafico
t_x=max(max(ex));
axis([-1 (t_x+1) -1 (t_y+1)]);
eldraw2(ex,ey,[1 2 1],Edof(:,1));
pause(2)

%----------BIBLIOTECA DE FUNCOES -------------------------
function le_titulo(fid)
while 1
    tline = fgetl(fid);
    if (isempty(tline)|| length(tline)<=1),%identifica linha em branco
        break
    end 
end
%-----------------------------------
function [Nels,nvigas,n_materiais,...
    N_Nos,n_grupo,nvar_lsr,Hmax,ncol,n_ansys]=le_dimensoes(fid)
tline = fgetl(fid);
[temp]=sscanf(tline,'%f');
Nels=temp(1); 
nvigas=temp(2);
n_materiais=temp(3);
N_Nos=temp(4);
n_grupo=temp(5);
nvar_lsr=temp(6);
Hmax=temp(7);
ncol=temp(8);
n_ansys=temp(9);
%%-----------------------------------
function [tipo]=le_tipo(fid)
tline = fgetl(fid);
switch tline(1:4)
        case 'trel'
            tipo=0;
        case 'pórt'
            tipo=1;
        case 'port'
            tipo=1;
        case 'Trel'
            tipo=0;
        case 'Pórt'
            tipo=1;
        case 'Port'
            tipo=1;
end
%-----------------------------------
function [incid]=le_incidencia(fid,nels)
for i=1:nels
    tline=fgetl(fid);
    incid(i,:)=sscanf(tline,'%f');
end
%-----------------------------------
function [Ef_coluna]=le_ansys_colunas(fid,ncol)
for i=1:ncol
    tline=fgetl(fid);
    Ef_coluna(i,:)=sscanf(tline,'%f');
end
%-----------------------------------
function [Ef_viga]=le_ansys_vigas(fid,nvigas)
for i=1:nvigas
    tline=fgetl(fid);
    Ef_viga(i,:)=sscanf(tline,'%f');
end
%-----------------------------------
function [Edof]=f_Edof(incid,graus,tipo)
m=length(incid);

if tipo==0
    Edof=zeros(m,5);
    Edof(:,1)=incid(:,1);
    for i=1:length(incid)
        for j=1:length(graus)
            if incid(i,2)==graus(j,1)
                Edof(i,2)=graus(j,2);
                Edof(i,3)=graus(j,3);
            else if incid(i,3)==graus(j,1)
                    Edof(i,4)=graus(j,2);
                    Edof(i,5)=graus(j,3);
                end
            end
        end
    end
end

if tipo==1
    Edof=zeros(m,7);
    Edof(:,1)=incid(:,1);
    for i=1:length(incid)
        for j=1:length(graus)
            if incid(i,2)==graus(j,1)
                Edof(i,2)=graus(j,2);
                Edof(i,3)=graus(j,3);
                Edof(i,4)=graus(j,4);
            else if incid(i,3)==graus(j,1)
                    Edof(i,5)=graus(j,2);
                    Edof(i,6)=graus(j,3);
                    Edof(i,7)=graus(j,4);
                end
            end
        end
    end
end
%-----------------------------------
function [graus]=le_graus(fid,N_Nos)
for i=1:N_Nos
    tline=fgetl(fid);
    graus(i,:)=sscanf(tline,'%f');
end
%-----------------------------------
function [ex]=f_ex(coord,incid,nels)
ex=zeros(nels,2);
for i=1:length(incid)
    for j=1:length(coord)
        if incid(i,2)==coord(j,1)
            ex(i,1)=coord(j,2);
        end
        if incid(i,3)==coord(j,1)
            ex(i,2)=coord(j,2);
        end
    end
end
%-----------------------------------
function [ey]=f_ey(coord,incid,nels)
ey=zeros(nels,2);
for i=1:length(incid)
    for j=1:length(coord)
        if incid(i,2)==coord(j,1)
            ey(i,1)=coord(j,3);
        end
        if incid(i,3)==coord(j,1)
            ey(i,2)=coord(j,3);
        end
    end
end     
%-----------------------------------
function [coord]=le_Coord(fid,N_Nos)
for i=1:N_Nos
    tline=fgetl(fid);
    coord(i,:)=sscanf(tline,'%f');
end
%-----------------------------------
function [el]=le_materiais(fid,n_materiais)
for i=1:n_materiais
    tline = fgetl(fid);
    el(i,:)=sscanf(tline,'%f');
end
%-----------------------------------
function [ep]=f_matbarras(fid,nels,el,n_materiais)
for i=1:nels
    tline = fgetl(fid);
    n (i,:) = sscanf (tline,'%f');
end
ep=zeros(n_materiais);
for i=1:nels
    for j=1:n_materiais
        if n(i,2) == el(j,1)
            for variable=2:size(el,2)
            ep(i,variable - 1) = el(j,variable);
            end
        end
    end
end
%-----------------------------------
function [grupo]=le_grupo(fid,n_grupo)
grupo=cell(n_grupo,1);
for i=1:n_grupo
    tline=fgetl(fid);
    grupo{i}=sscanf(tline,'%f');

end
%-----------------------------------
function [Id_Grupo_lsr]=le_ligacoes(fid,N_Nos)
%As ligacoes viga-coluna semirrigidas estao associadas a um Grupo_lsr
%Os Grupo_lsr são as VP_lsr
%0- Para ligacao rigida (apoios)
%Id_Grupo_lsr{i,j}  i-numero do nó; j- numero de VP_lsr
%global N_Nos
%Id_Grupo_lsr = cell(N_Nos,2);
Id_Grupo_lsr =zeros(N_Nos,2);
for i=1:N_Nos
    tline = fgetl(fid);
    [temp]=sscanf(tline,'%f');
    %Id_Grupo_lsr{i,1}=temp(1);
    %Id_Grupo_lsr{i,2}=temp(2);
    Id_Grupo_lsr(i,1)=temp(1);
    Id_Grupo_lsr(i,2)=temp(2);
end
disp('### Id. Grupos das Ligações Semirrigidas ###')
disp(Id_Grupo_lsr);
pause(1)
%-----------------------------------
