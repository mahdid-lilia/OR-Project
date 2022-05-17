
function [A,K] = prime(G)

[m n]=size(G);

q=[1];%  element deja marqué
k=1% le nombre d elements deja marqué
A=[]% Poids minimale finalement générée
while length(q)~=m
    e=[];
    for i=1:k
        for j=1:n
            if G(q(i),j)~=0 &&  ~ Marque(j, q)% is not in the number of elements
                e=[e;G(q(i),j) q(i) j];
            end
        end
    end
    
   [j index]=min(e(:,1));% Recherche de l'indice du plus petit poids adjacent à tous les éléments de l'actuellement marqué
    A=[A; e(index,:)];% du groupe à trois voies d'arbres minimalement générés
    q=[q e(index,3)];
    k=k+1;  
end
end
