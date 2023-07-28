function [K]=Comprimento_Flambagem(IxLe,VP_lsr)
% CALCULO DO COEFICIENTE DE FLAMBAGEM Kx
% EQUACAO A SER CALCULADA
% Foi calculada a partir da equação prposta pela NBR 8800 (1986)/ Ábaco

global coord incid nvar_lsr Id_Grupo_lsr
global ex ey grupo Ix_elem
global Nels n_grupo L ep

Kx=zeros(Nels,1);
Scoord=size(coord,1);
G=zeros(Scoord,1);
E=ep(1,1);              
% Cáculo de Ga e Gb.
for i=1:Scoord
    SomaP=0;
    SomaV=0;
if nvar_lsr==0   
 % será calculado o G para ligações rigidas
    for j=1:Nels
        if (coord(i,2)== ex(j,1)|| coord(i,2)==ex(j,2))...
                && (coord(i,3)== ey(j,1) || coord(i,3)==ey(j,2))
            if (ex(j,1)-ex(j,2))==0;     %Distinção entre viga e coluna
                SomaP=IxLe(j)+SomaP;     %Somatório de Ix/L de coluna
                %para cálculo de G.
            else
                SomaV=IxLe(j)+SomaV;     %Somatório de Ix/L de Viga
                %para cálculo de G.
            end
        end
    end
    G(i)=SomaP/SomaV; %G(i)=SomaP/(SomaV+SomaP); %Sanchez (2014)
     if G(i)==inf
         G(i)=1;
     end
 else
 % será calculado o G para ligações semirrigidas
      for j=1:Nels
        if (coord(i,2)== ex(j,1)|| coord(i,2)==ex(j,2))...
                && (coord(i,3)== ey(j,1) || coord(i,3)==ey(j,2))
            if (ex(j,1)-ex(j,2))==0;     %Distinção entre viga e coluna
                SomaP=IxLe(j)+SomaP;     %Somatório de Ix/L de coluna
                %para cálculo de G.
            else
                %Somatório de Ix/L de Viga para cálculo de G
                % Sánchez 2014
                %alpha=1.5/(1+(6*E*Ix_elem(j))/(L(1,j)*VP_lsr(Id_Grupo_lsr(i,2),1)));
                %NBR 8800 (1986)
                %R=(1+4*E*I/L*Ra)(1+4*E*I/L*Rb)-(E*I/L)^2*(4/Ra*Rb) 
                %        a              b          c           d
                %Formula muito grande logo foi dividida
                %R= a*b-(c*d)
                V_lsr_viga=incid(j,1:3);
                a=1+((4*E*Ix_elem(j))/(L(1,j)*VP_lsr(Id_Grupo_lsr(V_lsr_viga(1,2),2),1)));
                b=1+((4*E*Ix_elem(j))/(L(1,j)*VP_lsr(Id_Grupo_lsr(V_lsr_viga(1,3),2),1)));
                c=(E*Ix_elem(j)/L(1,j))^2;
                d=4/(VP_lsr(Id_Grupo_lsr(V_lsr_viga(1,2),2),1)*VP_lsr(Id_Grupo_lsr(V_lsr_viga(1,3),2),1));
                R=a*b-(c*d);
                alpha=(1+((2*E*Ix_elem(j))/(L(1,j)*VP_lsr(Id_Grupo_lsr(V_lsr_viga(1,3),2),1))))/R;
                % Sánchez 2014
                %alpha=1.5/(1+(6*E*Ix_elem(j))/(L(1,j)*VP_lsr(Id_Grupo_lsr(i,2),1)));                
                SomaV=alpha*IxLe(j)+ SomaV;
                %SomaV=IxLe(j)+SomaV;
            end
        end
      end 
     G(i)=SomaP/SomaV; %G(i)=SomaP/(SomaV+SomaP); %Sanchez (2014)
     if G(i)==inf
         G(i)=1;
     end
end   
end
% Cálculo de Kx.
for i=1:Nels
    eta1=G(incid(i,2));
    eta2=G(incid(i,3));
    Kx(i)= sqrt((1.6*eta1*eta2+4*(eta1+eta2)+7.5)/(eta1+eta2+7.5));
    if isnan(Kx(i)), keyboard, end
end
    K=zeros(n_grupo,1);
    for i=1:n_grupo
    tam_group=max(size(grupo{i}));
    K_grupo=zeros(1,tam_group);
     for j=1:tam_group
    K_grupo(j)=Kx(grupo{i}(j));
     end
     K(i)=max(K_grupo);
    end
    
    
    
    
end