% cette fonction nous permet de savoir si on a inséré des sommmets dans le
% graphe et s'il a un cercle 
function [q,c]=Circle(q,p)% p = arête que nous insérons dans le graphe
g=max(q)+1;
c=0;
n=length(q);
if q(p(1))==0 & q(p(2))==0
    q(p(1))=g;
    q(p(2))=g;
elseif q(p(1))==0
    q(p(1))=q(p(2));
elseif q(p(2))==0
    q(p(2))=q(p(1));
elseif q(p(1))==q(p(2))
    c=1;
    return
else
    m=max(q(p(1)),q(p(2)));
    for i=1:n
        if q(i)==m
           q(i)=min(q(p(1)),q(p(2)));
       end
   end
end
% à la sortie on aura le graphe avec le nouveau ensemble de sommets
