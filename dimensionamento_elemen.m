function [Esforco_max]=dimensionamento_elemen(rgx,x,lambda_W,Zx,A,tw,lambda_F,Moment_sol,Axial_sol,K)

global tam_group grupo L ep n_grupo

for i=1:n_grupo
    tam_group=max(size(grupo{i}));
    for j=1:tam_group
        iel=grupo{i}(j); % numero do elemento
        Li=L(iel);       % comprimento do elemento
        Ei=ep(iel,1);    % módulo do elemento
        fyi=ep(iel,4);
        lambdaz=(K(i)*Li/rgx(i))*sqrt(fyi/((pi^2)*Ei));  
        if lambdaz>1.5
            parx = (0.877/(lambdaz^2));
        else
            parx = (0.658^(lambdaz^2));
        end
        
        % FLAMBAGEM LOCAL DAS CHAPAS
        if x(i)<65  % Flambagem Local - Laminados
            Qa=1;   
            Qs=1;   % todas as mesas da série W são compactas para compressão
            if lambda_W(i) > 1.49*(sqrt(Ei/fyi)) % Enrijecido
                
                Sigma =parx*fyi; rES=sqrt(Ei/Sigma);
                
                Be=1.92*tw(i)*rES*(1-((0.34/lambda_W(i))*rES));
                if Be<(lambda_W(i)*tw(i))
                    Aef=(A(i)-((lambda_W(i)*tw(i)-Be)*tw(i)));
                    Qa=Aef/A(i);
                end
            end
            
        else  %Perfil de chapa soldada - Calculo de Flambagem Local
            Qa=1;
            Qs=1;
            if lambda_W(i) > 1.49*sqrt(Ei/fyi)           %Enrijecido
                Sigma =parx*fyi; rES=sqrt(Ei/Sigma);
                Be=1.92*tw(i)*rES*(1-((0.34/lambda_W(i))*rES));
                if Be<(lambda_W(i)*tw(i))
                    Aef=(A(i)-((lambda_W(i)*tw(i)-Be)*tw(i)));
                    Qa=Aef/A(i);
                end
            end
            kc=4/(sqrt(lambda_F(i)));
            if lambda_F(i) > 0.64*sqrt(Ei/(fyi/kc))      %Não Enrijecido
                if lambda_F(i) > 1.17*(sqrt(Ei/(fyi/kc)))
                    Qs=(0.90*Ei*kc)/(fyi*(lambda_F(i)^2));
                else
                    Qs=1.415-(0.65*lambda_F(i)*sqrt(fyi/(Ei*kc)));
                end
            end
        end
        
        % Fator Q redução por flambagem local das chapas do perfil
        Q=Qa*Qs;
        
        % Calculo do novo Lambda zero
        lambdaz1=(K(i)*Li/rgx(i))*sqrt(Q*fyi/((pi^2)*Ei));
        if lambdaz1>1.5
            parx1 = (0.877/(lambdaz1^2));
        else
            parx1 = (0.658^(lambdaz1^2));
        end
        
        % Entao, o Momento e a Força Axial Resistente sao:
        Mdres = ((Zx(i)*fyi)/1.1);   %TODAS AS SEÇÕES SÃO COMPACTAS
        Ndres = ((A(i)*Q*parx1*fyi)/1.1);
        
        
        % Restrição de Interação FlexoCompressão (esforços internos)
        if (Axial_sol(iel)/Ndres)<0.2
            Esforco_max(iel,1)= ...
                ((Axial_sol(iel)/(2*Ndres))+(Moment_sol(iel)/Mdres))-1;
        else
            Esforco_max(iel,1)= ...
                ((Axial_sol(iel)/Ndres)+((8/9)*(Moment_sol(iel)/Mdres)))-1;
            
        end
    end
end
end
