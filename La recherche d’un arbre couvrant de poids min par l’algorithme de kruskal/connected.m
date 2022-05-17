%Cette fonction  nous permet de savoir si un graphe est connecté ou non 
% elle nous retourne 0 si le graphe est connecté, 1 sinon 
function c = connected(X)
c = 0;
i = 1;
j = 1;
a = size(X);
while(j > i)
    if X(i,j) == 0
        j = j + 1;
    else
        X(i,:) = X(i,:) | X(j,:);
        X(:,i) = X(:,i) | X(:,j);
        X(j,:) = [];
        X(:,j) = [];
        a(1) = a(1) - 1;
    end
    if (j > a(1)) & (i < a(1))
        j = i + 2;
        i = i + 1;
        c = 1;
        break
    else
        if i >= a(1)
            i = j;
        end
    end
end







