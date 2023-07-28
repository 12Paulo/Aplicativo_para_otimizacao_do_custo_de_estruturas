function [Peso]=Peso_individuo(x)

global n_grupo grupo ey E_aco Massa_eq_lsr_viga
global Massa_perfil incid Ix_elem
global  L nvar_lsr Id_Grupo_lsr Nels

%% Calculo da massa dos perfis estruturais
n_grupo=length(grupo);
PesoGrupo=zeros(n_grupo,1);
Peso_perfis=0;
k=0;
for i=1:n_grupo;
    tam_group=max(size(grupo{i}));
    for j=1:tam_group
        k=k+1;
        PesoGrupo(i)=PesoGrupo(i)+L(k)*Massa_perfil(k);
    end
    Peso_perfis=Peso_perfis+PesoGrupo(i);
end
%% Calculo da massa equivalente das ligacoes semirrigidas
if nvar_lsr>0
Lsr=x(n_grupo+1:end);
for i=1:nvar_lsr
    Fator_rigidez=(0.14:0.05:0.89); % O intervalo é de 0,13 a 0,89 para ligação semirrigida
    % sendo assim com intervalo de 0,1 tera no maximo 8 fatores de rigidez
    % 0,13 0,23 0,33 0,43 0,53 0,63 0,73 0,83
    R_Lsr(1,i)=Fator_rigidez(Lsr(1,i));  
end
Massa_eq_lsr_viga=0;%Incializa massa equivalente das LSR
% somaR1 = 0;
% somaR2 = 0;
for i = 1:Nels
    %Calculo da massa equivalente das ligacoes semirrigidas
    if (ey(i,1) - ey(i,2))==0   % massa equivalente de c/viga
        No_inicial= incid(i,2);
        No_final= incid(i,3);
        r1=R_Lsr(1,Id_Grupo_lsr(No_inicial,2));
        R1=(3*E_aco(i)*Ix_elem(i)*r1)/((1-r1)*L(i));
        r2=R_Lsr(1,Id_Grupo_lsr(No_final,2));
        R2=(3*E_aco(i)*Ix_elem(i)*r2)/((1-r2)*L(i));
%         somaR1 = somaR1 + R1;
%         somaR2 = somaR2 + R2;
%         part1 = sum((ones(nvar_lsr,1))*43.176);
%         part2 = sum((3.35e-4)*[somaR1;somaR2]);
%         Massa_eq_lsr_viga= Massa_eq_lsr_viga + (part1 + part2);    
    % Cálculo da meq das ligações (cada grupo possuem 2 nós)
    % Isso não muda se possuirmos pórticos com mais de 1 vão.
        part1 = 43.176+3.35e-4*R1;
        part2 = 43.176+3.35e-4*R2;
        Massa_eq_lsr_viga= Massa_eq_lsr_viga + (part1+ part2);
 
%         Massa_eq_lsr_viga=Massa_eq_lsr_viga+2*43.176+0.000335*(R1+R2);
        %Massa_eq_lsr_viga=Massa_eq_lsr_viga + ??*43.176+0.000335*(R1+R2);
%         Massa_eq_lsr_viga=Massa_eq_lsr_viga+(2*nvar_lsr*43.176)+2*0.000335*(R1+R2);

% wer = Massa_eq_lsr_viga
% wei = R1
% Wea = R2
%  wee = Peso_perfis

    end
end
else
    Massa_eq_lsr_viga=0;
end
Peso_lsr = Massa_eq_lsr_viga; 
%% Peso total do pórtico
Peso = Peso_perfis + Peso_lsr;
end