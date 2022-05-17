% Kruskal pour trouver l'arbre couvrant le poids minimal
% entrée : PV = nx3 martix. Les 1ère et 2ème rangées définissent les bords (2 sommets) et
% le 3ème est le poids du bord, elle nour reourne en sortie le poids minimum de l'arbre de sortie : w = poids minimum de l'arbre couvrant
function [w] = kruskal(PV)
row = size(PV,1);
X = [];
% créer une matrice adjacence pour le graphe 
for i = 1 : row
    X(PV(i,1),PV(i,2)) = 1;
    X(PV(i,2),PV(i,1)) = 1;
end
n = size(X,1);
% vérifier si le graphe est connecté 
con = connected(X);
if con == 1
   error('Graph is not connected');
end
% trier le graphe par ordre décroissant de poids 
PV = sorted(PV,3);
S=[];
S=sorted(PV,3);
q = zeros(1,n);
T = zeros(n);% T = Matrice d'adjacence minimale de l'arbre couvrant
for i = 1 : row
% vérifier si le graphe a un cercle 
    p = PV(i,[1 2]);
    [q,c] = Circle(q,p);
    if c == 1
       PV(i,:) = [0 0 0];
   end
end
% Calculer le poids minimum de l'arbre couvrant
w = sum(PV(:,3)');
% w poids calculé 

