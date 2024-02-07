RCMDR

Résumé 
summary(Dataset)

Afficher le tableau
Dataset

Afficher uniquement la colonne du tableau
Dataset$PERMIS

Nom 
main="SEXE"

Graphique camembert
pie(table(Dataset$SEXE))

Convertir numérique en facteur 
 

Graphe en secteur 
 


 Tableau fréquences/effectifs 

Tige et feuille 
  
→ (t, f, s) : pour allonger un chiffre entre * et . 
→ chiffre à droite : effectif → s’accumule jusqu’au chiffre entre parenthèse vers le bas (début) et vers le haut (fin)

 Graphique en barre - barplot
ATTENTION : barplot fonctionne pas avec la variable marque mais de la table de la marque 
⦁	Des effectifs
with(Dataset, barplot (table(MARQUE)))

Tableau des effectifs 
⦁	ordre décroissant 
with(Dataset, sort(table(MARQUE), decreasing = TRUE))
⦁	ordre croissant
with(Dataset, sort (table(MARQUE)))
⦁	tableau des effectifs : 
with(Dataset, table (MARQUE)) 

Histogramme 
⦁	Changer la coupure -breaks
with(Dataset, Hist(BUDGET, scale="density", breaks="Sturges", col="darkgray"))
with(Dataset, Hist(BUDGET, scale="density", breaks=c(500,1000,2000,2500), col="darkgray"))
⦁	Si on veut des bâtons, il faut ajouter des classes (nombres dans breaks) → breaks=1000
⦁	Fonction de répartition var budget
with(Dataset, plot(ecdf(BUDGET))) 

Nuage de bulle 
sunflowerplot(Score~Age,data=Dataset)

Couleur graphique 
col=c("white","black")

Moyenne 
with(Dataset, mean(Salaire, na.rm = TRUE))
ATTENTION : variable → prends en compte n-1 en dénominateur 
⦁	enlever valeur extrême 
Mh=(moyenne*n-valextr)/n-1
⦁	Tableau ANOVA (moyenne) → pour calculer rapport de corrélation

Moyenne pondérée 
with(Dataset, weighted.mean(Age, Effectif, na.rm = TRUE))
na.rm → valeurs manquants + remove 


 Supprimer valeur extrême

Ecart-type 
with(Dataset, sd(BUDGET, na.rm = TRUE))

Coeff asymétrie (skewness) et aplatissement (kurtosis)
numSummary(taille, statistics=c(«skewness», «kurtosis»))

Analyse de variance
Vf = 15.125
Vh = 11.86667
Mf = 6.375
Mh = 7.3333
Nf = 8
Nh = 6
M = 6.785714
VDM=(Nf*(Mf-M)^2+Nh*(Mh-M)^2)/(Nf+Nh)
VDM
MDV = ((Vf*(Nf-1) + Vh*(Nh-1))/(Nf+Nh))
MDV
VT = VDM + MDV
VT
n² = VDM / VT
n²

Regrouper deux variables
 Recoder les variables dans gérer les variables

Covariance
⦁	utiliser la formule de matrice de corrélation 
cov(Dataset[,c("Age","Score")], use="complete") 
cov(Dataset[,c("Age","Score")]) 
ATTENTION : fait avec n-1 donc résultat*(n-1)/n
