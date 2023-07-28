# Resumo do projeto
  Neste trabalho como parte dos requisitos para conclusão do mestrado, foi desenvolvido uma ferramenta computacional que utiliza a interface MATLAB-ANSYS para dimensionamento e redução do custo de projetos de estrutura em aço. 

  Primeiramente foi desenvolvido um banco de dados com perfis estruturais comerciais disponíveis. O módulo computacional de análise estrutural foi implementado na linguagem computacional APDL, do ANSYS®, devidamente adaptado para o procedimento automatizado de análise estrutural para diferentes configurações. As restrições do projeto consideradas foram as limitações de resistência e estabilidade bem como deslocamentos importantes da estrutura, de acordo com as prescrições da norma NBR 8800 (ABNT – Projeto de estruturas de aço e de estruturas mistas de aço e concreto de edifícios, 2008). 

  O módulo computacional de otimização, foi desenvolvido baseado no Algoritmo Genético (AG) disponível no toolbox “Global Optimization” do MATLAB®. Na busca de minimizar o custo de fabricação da estrutura, perfis estruturais comerciais e tipos de ligação viga-coluna foram considerados variáveis de entrada do projeto. 
 
  Para validação da ferramenta criada os resultados obtidos foram confrontados com resultados de pesquisas encontradas na literatura

# Arquitetura da ferramenta

Para melhor compreensão do projeto, abaixo segue a arquitetura da ferramenta que foi desenvolvida. 


Na pasta entrada é possível encontrar os arquivos de entrada, assim como o modelo estrutural em linguagem APDL, na pasta principal os códigos desenvolvidos na plataforma Matlab. 