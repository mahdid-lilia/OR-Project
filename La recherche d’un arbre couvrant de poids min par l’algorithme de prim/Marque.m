% v�rifer si j est d�ja marqu� ou non 
function re=Marque (j, biao)
    l=length(biao);
    for i=1:l
       if j==biao(i) 
            re=1;
            return;
       end
    end
    re=0;
    return;
end