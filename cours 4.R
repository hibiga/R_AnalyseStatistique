## ------------             Script R  Chapitre IV  - 2018  ------------------------

#  ----------      Chap IV        Programmer  en R    ----------------------------
# Algorithmique classique , avec conditionnelles, boucles, fonctions

# --- 1 --- Conditionnelle
a=-2
if(a>0) {
  print(a)
} else {
  print(a^2)
}

# --- 2  --- Boucles 
for ( i in 1 :10) print(i)

i=1
while (i<5) {
  print(i)
  i=i+1
}
T=NULL   # creation tableau vide
for ( i in 1 :10) T[i]=i^2
T

# --- 3  --- Fonctions (notion de sous programmes. Seule syntaxe : pas de procédure)

MaFonction=function(x,y) {  	# x et y en entrée de la fonction
  z=x+sqrt(y)
  return(z)    			# resultat de la fonction			
}

MaFonction(3,4)			# appel de la fonction et affichage du résultat
r=MaFonction(1,1)			# affectation à une variable
r

valeurabsolue=function(a){
  if(a>0) {
    return(a)
  } else {
    return(-a)
  }
}

valeurabsolue(-6)
valeurabsolue(7)

valeurabsolue  	# affiche le code de la fonction

# et moins classique ...:
# ---  4 --- Eviter l'écriture de boucles avec des fonctions du type *apply
#            ou, rappel, avec un calcul vectoriel
V=(1:10)^2
V
V==T
# --- appliquer une fonction aux lignes (ou aux colonnes) d'une matrice : apply
x = cbind(x1 = 3, x2 = c(4:1, 3:6))
x
for (i in 1:2) print(mean(x[,i]))
apply(x, 2, mean)
apply(x, 1, mean)
apply(x, 2, sort)
rowMeans(x)
colMeans(x)


# calcul des moyennes en ligne, 
# calcul des moyennes de chaque elève

#            avec apply sur un DF
eleves=data.frame(noteA=c(5,7,9),sexe=factor(c("m","f","f")),noteM=c(3,9,12))
eleves
apply(eleves[,c("noteA","noteM")],1,mean)
eleves$moy=apply(eleves[,c("noteA","noteM")],1,mean)
eleves
#   		equivaut à rowMeans
eleves$moy2=rowMeans(eleves[,c("noteA","noteM")])
eleves
#             ou simplement avec calcul vectoriel
eleves$moy3=(eleves$noteA+eleves$noteM)/2
eleves

#             on pourrait aussi ecrire explicitement la boucle, maladroit en R
for (i in 1:nrow(eleves)){
  eleves$moyB[i]=(eleves$noteA[i]+eleves$noteM[i])/2
}
eleves



# --- appliquer une fonction aux composantes d'une liste (ou d'un DF) : lapply, sapply
x = list(a = 1:10, b = exp(-3:3), c = c("h","f","h"));x

lapply(x, length) 
lapply(x, mean) # pb; selectionner au préalable les variables numériques
sapply(x, length)  

class(lapply(x, length)); length(lapply(x, length))
class(sapply(x, length)); length(sapply(x, length))
# s :simplify
? sapply
# lapply ou sapply sur le dataframe iris (disponible dans l'environnement) :
iris
str(iris)
lapply(iris[,1:4], mean)
sapply(iris[,1:4], mean)

# pour selectionner les variables numériques
sapply(eleves,is.numeric)
noteseleves=eleves[,sapply(eleves,is.numeric)]   
sapply(noteseleves,mean)
colMeans(noteseleves)
rowMeans(noteseleves)




# --- appliquer une fonction aux sous vecteurs correspondants aux niveaux d'un facteur
#     tapply
?tapply
x=c(1,2,3,3,2,1)
index=factor(c("h","f","f","h","f","f"))

x;index
tapply(x,index,sum)

str(iris)
tapply(iris$Sepal.Length,iris$Species,mean)

# Pour plus tard, en 2ème lecture
# ---  appliquer une fonction à toutes les variables d'un DF,
#     pour tous les sous ensembles d'individus définis par les niveaux d'un facteur
#  aggregate ou by

# consulter l'aide ...
? aggregate

aggregate(iris, list(iris$Species),mean)
irisnum=iris[,sapply(iris,is.numeric)]   # selection des variables numériques
str(irisnum)
aggregate(irisnum, list(iris$Species),mean)
aggregate(irisnum, list(iris$Species),summary)

# exemples fournis dans l'aide
aggregate(state.x77, list(Region = state.region), mean)
aggregate(state.x77,
          list(Region = state.region,
               Cold = state.x77[,"Frost"] > 130),
          mean)

? by
by(iris$Sepal.Length, iris$Species,summary)
by(iris,iris$Species,summary)


