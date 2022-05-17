
function [A,K] = prime(G)

[m n]=size(G);

q=[1];%  element deja marqu�
k=1% le nombre d elements deja marqu�
A=[]% Poids minimale finalement g�n�r�e
while length(q)~=m
    e=[];
    for i=1:k
        for j=1:n
            if G(q(i),j)~=0 &&  ~ Marque(j, q)% is not in the number of elements
                e=[e;G(q(i),j) q(i) j];
            end
        end
    end
    
   [j index]=min(e(:,1));% Recherche de l'indice du plus petit poids adjacent � tous les �l�ments de l'actuellement marqu�
    A=[A; e(index,:)];% du groupe � trois voies d'arbres minimalement g�n�r�s
    q=[q e(index,3)];
    k=k+1;  
end
end
