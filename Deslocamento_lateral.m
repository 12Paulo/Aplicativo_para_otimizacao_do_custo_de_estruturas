function [g_DELTA_lateral]=Deslocamento_lateral(delta)

global Hmax ncol

delta_adm=Hmax/400;      % utilizar a altura max do pilar
g_DELTA_lateral = zeros(ncol,1);
for j=1:ncol
    g_DELTA_lateral(j)=(delta(j)/delta_adm)-1; %restricao associadas aos deslocamentos
end
end
