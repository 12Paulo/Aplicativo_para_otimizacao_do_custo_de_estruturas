function [L,I_vigas,L_vigas]=comprimento_barras()

global nvigas Nels ex ey 

I_vigas=zeros(1,nvigas);   % identificação dos elemenos de viga
n=0;                       % contador de vigas
L_vigas=zeros(nvigas,1);   % nvigas-Numero de vigas do pórtico
for i = 1:Nels 
    
    L(i) = sqrt((ex(i,1)-ex(i,2))^2+(ey(i,1)-ey(i,2))^2); %coluna
    if ey(i,1)==ey(i,2)
        n=n+1;
        I_vigas(n)=i;        %correspondencia de viga com a contagem geral dos elementos
        L_vigas(n) = L(i);   %comprimento das vigas do portico
    end
end