function[E_aco, Ix_elem, Massa_perfil,fy]=Propriedades_elementos()
% E_aco,Ix_elem,Massa_perfi

global Nels ep grupo n_grupo 

E_aco=zeros(Nels,1);
Ix_elem=zeros(Nels,1);
Massa_perfil=zeros(Nels,1);
for i=1:n_grupo;
    tam_group=max(size(grupo{i}));
    for j=1:tam_group  
        E_aco(grupo{i}(j))=ep(grupo{i}(j),1);
        fy(grupo{i}(j))=ep(grupo{i}(j),4);
    end
end