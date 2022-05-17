
function RESULTAT = CFC (Matrice) 
  i = 1 ;
  j = 1 ;
  z = 1;
  c = size(Matrice,1);
  finish = ones(c,1);
  m = transpose(Matrice);
  composante = [];
  
  while i < c +1 
    sommet(i) = 0 ;
    i = i + 1 ;
  endwhile
  b = 1 ;
  while b < c +1 
    AjouterDeja(b) = false ;
    b = b + 1 ;
  endwhile
    e = 1
  while e < c +1  
    MarquePlus(e) = 0;
    MarqueMoins(e) = 0; 
    e = e + 1 ;
  endwhile
  k = 1 ;
  n = 1 ;
  while k <  c + 1  
    MarquePlus(k) = 0 ; 
    MarqueMoins(k) = 0 ; 
    k = k + 1 ;
  endwhile
  terminer3 = 1;
  while terminer3 
          i = j ;
          j = 1; 
          terminer = 1 ;
          while j < c + 1 && terminer == 1
                  AjouterDeja(j) ;
                  Matrice(i,j) ;
                  if Matrice(i,j) == 1 && AjouterDeja(j) == false
                      if MarquePlus(j) == 1   
  
                             terminer = 0;
                      else
                             MarquePlus(j) = 1; 
                             MarquePlus;
                             i = j ;
                             j = 1 ;       
                       endif
                  else             
                         j = j + 1 ;
                  endif
                  
          endwhile
          terminer1 = 1;
          i = 1 ;
          j = 1 ;
          while j < c + 1  && terminer1 == 1
                  if m(j,i) == 1  && AjouterDeja(j) == false
                        if MarqueMoins(j) == 1  
                            terminer1 = 0;
                        else
                             MarqueMoins(j) = 1 ;
                             i = j ;
                             j = 1 ;
                   
                        endif
                  
                  else 
                       j = j + 1 ;
                  endif
                  
          endwhile
          q = 1 ;
          t = 1 ;
          cpt = 0;
          if AjouterDeja(z) == true
              composante = [composante, z];
              composante
          endif
          composante = [];
          while q < c +1 
              
               if MarquePlus(q) == 1 && MarqueMoins(q) == 1  && AjouterDeja(q) == false
                   composante = [composante, q ];
                   AjouterDeja(q) = true;
                               
               endif
               q = q + 1;  
          endwhile
          composante
          composante = [];
       k = 1;
       x = 1 ;
       while z < c+1   &&  x   
         
                if   AjouterDeja(z) == false 
                     j = z;
                     MarquePlus(j) = 1;
                     MarqueMoins(j) = 1;
                     AjouterDeja(j) = true;
                     x = 0;
                else 
                     z = z + 1;    
                  
                endif
       endwhile
       if AjouterDeja == finish 
          composante = [composante , j];
          composante
          terminer3 = 0;
       endif
endwhile
endfunction
