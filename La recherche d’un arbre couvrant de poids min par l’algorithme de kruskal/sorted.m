% Cette fonction nous permet de parcourir une matrice et de la trier selon
% une columne donnée  

function A = sorted(A,col)
[r c] = size(A);

if col < 1 | col > c | fix(col) ~= col
   uiwait(msgbox([' Vous devez entrer des valeurs positives entre 1 & ' num2str(c)],'ERROR','error'));
   error;
end

for i = 1 : r - 1
    d = r + 1 - i;
    for j = 1 : d - 1
        if A(j,col) > A(j + 1,col)           
            A([j j + 1],:) = A([j + 1 j],:);
        end
    end
end



