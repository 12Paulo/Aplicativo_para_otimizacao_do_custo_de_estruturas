

function [Moment_sol,Axial_sol,flecha,delta]=Analise(A,Ix_grupo,VP_lsr)

global n_ansys ncol nvigas Ef_coluna Ef_viga 

Si_lsr=VP_lsr;    
prop=[A;Ix_grupo;Si_lsr];  % Caso não considere a rigidez da ligação tirar a matriz "Si_lsr" da matriz "prop"
%rotulos = ['a1 =';'a2 =';'a3 =';'a4 =';'i1 =';'i2 =';'i3 =';'i4 =';'s1 =';'s2 ='];  
% colocar de acordo com o numero de variaveis de projeto e se tiver ligação
% semirrigida inserir s1, s2 ...
%t = table(rotulos, prop);
Atualiza_VPs_APDL(prop);
%writetable(t, 'C:\Users\Paulo\Desktop\Programa_Paulo\variavel_portico.txt','Delimiter',' ', 'WriteVariableNames',0);
% Executing Ansys analysis alterar de acordo com o modelo que será
% analizado
dos('SET KMP_STACKSIZE=2048k & "C:\Program Files\ANSYS Inc\v160\ansys\bin\winx64\ANSYS160.exe" -b -p ane3fl -dir "C:\Users\Paulo\Desktop\Programa_Paulo" -i "C:\Users\Paulo\Desktop\Programa_Paulo\modelo_mecanico_apdl.txt" -o "C:\Users\Paulo\Desktop\Programa_Paulo\resultados_da_analise.dat"');
arq_name='resultados_da_analise.dat'; % alterar de acordo com o modelo que sera analizado
fid=fopen(arq_name);

Codigo=1;    %controle para inicio do while
%keyboard;
i=0;
if n_ansys>41 % O relatório é gerado normal até a linha 41, depois ele pula linha e 
    % coloca outras informações do Ansys (que não serão utilziada para geração da matriz elemento) 
    % e retoma novamente o relatório de esforços
while Codigo    
    tline = fgetl(fid); % Retorna a próxima linha do arquivo 'fid'
    %removendo os caracteres de nova linha
    if ~ischar(tline), break, end   %identifica fim do arquivo de dados
    %disp(tline)e pára
    if length(tline)<=15, continue, end  %identifica e pula linha em branco
    switch tline(1:15)
        case '    ELEM    NXI'
            if i==41
                for i=42:n_ansys
                    tline=fgetl(fid);    
                    elemento(i,:)=sscanf(tline,'%f');  
                end
            else
            for i=1:41     % numero de elementos gerados pelo relatório ansys na primeira parte
                tline=fgetl(fid);    
                elemento(i,:)=sscanf(tline,'%f');
            end
            end
                if i==n_ansys
                    break
                end
    end
end
else
while Codigo
    tline = fgetl(fid); % Retorna a próxima linha do arquivo 'fid'
    %removendo os caracteres de nova linha
    if ~ischar(tline), break, end   %identifica fim do arquivo de dados
    %disp(tline)e pára
    if length(tline)<=15, continue, end  %identifica e pula linha em branco
    switch tline(1:15)
        case '    ELEM    NXI'
            for i=1:n_ansys     % numero de elementos gerados pelo relatório ansys na primeira parte
                tline=fgetl(fid);    
                elemento(i,:)=sscanf(tline,'%f');
            end
                if i==n_ansys
                    break
                end
    end
end   
end
fclose(fid);
y=abs(elemento);
Axial=zeros(n_ansys,1);
Cortante=zeros(n_ansys,1);
Momento=zeros(n_ansys,1);
Desloc_x=zeros(n_ansys,1);
Desloc_y=zeros(n_ansys,1);
for i=1:n_ansys
    Axial(i,1)=max(y(i,2),y(i,3));
    Cortante(i,1)=max(y(i,4),y(i,5));
    Momento(i,1)=max(y(i,6),y(i,7));
    Desloc_x(i,1)=y(i,8);
    Desloc_y(i,1)=y(i,9);
end
Axial_sol_col=zeros(ncol,1);
Moment_sol_col=zeros(ncol,1);
delta=zeros(ncol,1);
Axial_sol_viga=zeros(nvigas,1);
Moment_sol_viga=zeros(nvigas,1);
flecha=zeros(nvigas,1);
% As matrizes abaixo que irão armazenar os resultados dos esforoços devem ser
% alteradas caso seja alterado a malha de elementos finitos
for i=1:ncol
    Axial_sol_col(i,1)=max(Axial(Ef_coluna(i,2),1),Axial(Ef_coluna(i,3),1));
    Moment_sol_col(i,1)=max(Momento(Ef_coluna(i,2),1),Momento(Ef_coluna(i,3),1));
    delta(i,1)=max(Desloc_x(Ef_coluna(i,2),1),Desloc_x(Ef_coluna(i,3),1));
end
for i=1:nvigas
    vetor1=[Axial(Ef_viga(i,2),1);Axial(Ef_viga(i,3),1);Axial(Ef_viga(i,4),1);Axial(Ef_viga(i,5),1)]; 
    vetor2=[Momento(Ef_viga(i,2),1);Momento(Ef_viga(i,3),1);Momento(Ef_viga(i,4),1);Momento(Ef_viga(i,5),1)];
    vetor3=[Desloc_y(Ef_viga(i,2),1);Desloc_y(Ef_viga(i,3),1);Desloc_y(Ef_viga(i,4),1);Desloc_y(Ef_viga(i,5),1)];
    Axial_sol_viga(i,1)=max(vetor1);
    Moment_sol_viga(i,1)=max(vetor2);
    flecha(i,1)=max(vetor3);
end
Axial_sol=[Axial_sol_col;Axial_sol_viga];
Moment_sol=[Moment_sol_col;Moment_sol_viga];
end

