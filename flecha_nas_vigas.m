function [g_flecha]=flecha_nas_vigas(flecha)

global nvigas L_vigas

g_flecha = zeros(nvigas,1);
flecha_adm = L_vigas/350;    
for j=1:nvigas  
    g_flecha(j)=abs(flecha(j))/flecha_adm(j)-1; %restricao associadas as flechas
end
end