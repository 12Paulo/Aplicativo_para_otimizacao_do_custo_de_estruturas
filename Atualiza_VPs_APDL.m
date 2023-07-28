
function Atualiza_VPs_APDL(x)
% Atualiza o arquivo variavel_portico_0.txt com os valores
% correntes das variaveis de projeto (VPs)
% que vem do algoritmo de otimizacao
%
% x - Variaveis de projeto (VPs)
% variavel_portico_0.txt  - arquivo com a configuracao inicial
% variavel_portico.txt  - arquivo atualizado p/ANSYS

fid1=fopen('variavel_portico_0.txt');
fid2=fopen('variavel_portico.txt','w');

Codigo=1;    %controle para inicio do while
k=0;
while Codigo
    tline = fgetl(fid1);
    %disp(tline)
    if ~ischar(tline)
        break
    end   %identifica fim do arquivo de dados
    k=k+1;
    [texto]=sscanf(tline(1:5),'%s');     %leitura da linha
    %[numero]=sscanf(tline(6:end),'%f');
    
    % fprintf(fid2, '%s %f \n', texto,numero);  %imprime linha original
    fprintf(fid2, '%s %f \r\n', texto,x(k));    %imprime linha atualizada
    
    %   to read the file with Microsoft® Notepad,
    %   use '\r\n' instead of '\n' to move to a new line
end
fclose(fid1);
fclose(fid2);
end