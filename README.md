https://drive.google.com/drive/folders/1Emy2bY8ajdq4lBBsZgj_iy6IwAli8Hna

# Fichier 
## Ouvrir
donnees=read.table(file = "decathlon_2012.txt", sep = "\t", dec = ".", header=TRUE, row.names = 1, na.strings = « NA »)

 sep : \t : rien & « ; » …
 
	na.strings : comment sont indiqués les NA 
 
row.names 🡪 la 1er colonne est compté comme un header si on met pas ça prend comme une ligne normal

PHOTOS 

1 : avec                                                   2 : sans

getwd() 🡪 mets le plots là où le dossier R est

setwd("exemples") 🡪 exemples : set as working & changer le repertoire courant 

## Sauvegarder 
write.table(x,file= « ») -> enregistrer tableau dans un fichier 
## Fichier R 
Save(x,file= » ») : sauvegarder

Load(x,file= » ») : charger 

Source(« .r », echo=TRUE) : exécuter ligne de commandes contenues dans un fichier texte – echo : faire apparaître instructions 

Ctrl c : arrêter un sccript/fonction 
## Sortir
Sink(« « ) 

Sink(,append) : si même nom de fichier -> conserve le fichier/rajoute les sorties à la suite 

Arrêter le redirection : sink()

# Type
Character : chaine de caractères 
--> Strsplit(x,split= »_ »)

Integer : entier 

Logical : TRUE/FALSE & T/F 

Null : vide

Numeric : type flottant (1, 2.13, pi)

Is.__ : savoir le type 

Conversion : 
- as. [character/complex/logical/numeric/list/integer]
- manière implicite 
# Vecteur
## Création
- X <- vector(“numeric”) : numeric(0)
- x <- vector("numeric",6) : 0 0 0 0 0 0
- iter <- 1 
cat(iter<-iter+1,"\n") : \n retour chariot
- x=c(-2,-1,0,1,2)
- y=rep(4,5) 🡪 (4,4,4,4,4)
- Z = c(x,y) 🡪 (-2,-1,0,1,2,4,4,4,4,4)
- Z = paste(x,y) 🡪 "-2 4" "-1 4" "0 4"  "1 4"  "2 4" 
- Seq(from=_, by=_, to=_) 
- Seq(from=_, by=_, length=_) 
- Rep(x),y) : x -> c(), seq(), 1 & y -> (times, each)

ztronque = z[-c(1,10)] 🡪 enlève la 1er et 10ème valeur de z 

zpositif=z[z>=0] 🡪 où il n’y a que les valeurs positifs

## Valeur manquante 
is.na() (TRUE) & complete.cases ()(FALSE): si y a valeur manquante ou non

naa.omit() : supprimer les NA

na.fail() : message d’erreur si y a NA 

## Type 
Character/numeric/null (vide)/integer (entire)\logical (TRUE&FALSE\T&F)

Mode 🡪 is.[modes]

## Taille 
Length
## Addition 
x+z 🡪 x se répète 2 fois donc les 5 premiers de z sont additionnés par x puis les 5 derniers de z sont une nouvelle fois additionné par x

x[c(1)]+y[c(5)] 🡪 1er valeur dans x + 5ème valeur dans y

## Modification 
x[c(3)]=7 🡪 la 3ème valeur de x prend la valeur de 7 
## Sélectionner
z[c(1:4)] 🡪 sélectionne les 4 premières valeurs

z[seq(1,10,by=2)] 🡪 selection d’indices impairs du vecteur z 

prenom[niveau=="AB"&sexe=="f"] 🡪 prénom des personnes avec un niveau AB et un sexe f


PHOTOS


Obtenir indice des éléments : which (x>=2 & x<4) -> placement dans la vecteur | x[__] : les nombres
## Information 
Head() : affiche le début -> head(x,1) : juste le premier, etc.

Tail() : affiche la fin -> tail(x,1) : juste le dernier, etc.

Unique() : voir valeurs distinctes 

Is.finite() : elements finis ou pas 

Is.infinite() : elements infinis

Is.nan() : elements pas des nombres 

## Nombres complexes 
2i : pas d’espace 

Préciser partie imaginaire 

"+" "/" "*" possible

## Concatène plusieurs vecteurs en un seul 
Stack 

Unstack 🡪 dépilage inverse de cette operation 

# Objets
ls() : afficher la liste des objets existants

rm() : supprimer un/plsrs objets	

Rm(list=ls()) : effacer tous les objets de la session en cours

Création : vector(type= », length= »)

Class() : savoir sa classe [is.factory() & is.numeric() & is.function()]

C : ajouter éléments 

## Variable ordinale 
niveau=ordered(c("AB","B","AB","AB","B","I"))

# Attributes
Vecteur 🡪 levels, class 

Pour matrice 🡪 donne sa dimension 

Liste 🡪 names

Data.Frame 🡪 names, class, row.names

# Tableau des effectifs 
Table() 🡪 peut mettre une var ou plusieurs (effectifs croisés)

# Calcul matriciel 
## Creation matrice 
- x=matrix(c(1,2,3,4,5,6,7,1,2,3,4,5,6,7),nrow=7,ncol=2)
- byrow : par ligne ! par défaut : par colonne
- dim(x) <- c(2,3) (2 lignes, 3 cols)
- attr(x,”dim”) <- c(2,3) (2 lignes, 3 cols)
- diag(seq(1,5)) : matrice diagonal 5x5
- x <- cbind(a=c(1,2,3),b=pi)
- as.matrix(DATA FRAME)
## Affichage matrice
- x[,2] : colonne 
- x[1,] : ligne 
- x[1,-2] : ligne 1 sans colonne 2
## Matrice variance-covariance
i5=matrix(c(1,1,1,1,1,1,1),nrow=1)

I5=matrix(c(1,1,1,1,1,1,1),ncol=1)

Cx = x-I5%*%i5%*%x/7

VX=(t(Cx)%*%Cx)/7

## Concaténation
w et y deux vecteurs de 10 valeurs 

Y=matrix(c(w,y),nrow=10,ncol=2)

Y2 = cbind(w,y,deparse.level=1)

Rbind : rajoute ligne

Cbind : rajoute colonne 

# Liste
## Création 
- Stid=list(NbEtud=c(39,26),bac=factor(c("S","ES","ST"))) 🡪 $NbEtud [1] 39 26 $bac [1] S  ES ST Levels: ES S ST
- Stack(list(nom_var_col2 = x,…)
## Défaire 
Unlist()
## Obtenir
- Stid[[2]][3] 🡪 3ème valeur de la 2ème composante de la liste stid 🡪 ST
- Stid[[1]] 🡪 1er composante soit le NbEtud : peut faire la somme 
## Moyenne
Lapply 🡪 lapply(donnees[,2:12],mean) (moyenne pour chaque épreuve)

lapply(notes,mean)[-2] 🡪 moyenne de toutes les composantes sauf la 2ème 

mean(c(mean(notes[[1]]),mean(notes[[2]]),mean(notes[[3]]))) 🡪 moyenne équipondérée

weighted.mean(c(mean(notes[[1]]),mean(notes[[2]]),mean(notes[[3]])),c(2,2,4)) 🡪 moyenne de toutes les notes 

mean(unlist(notes)) 🡪 moyenne de toutes les notes
# Régression linéaire 
rl = lm(x ~ y) 🡪 droite de régression de y en x

names(rl) 🡪 coefficients, residuals, effects, rank, fitted.values, assign, qr, df.residual, xlevels, call, terms, model 

# Data Frame
## Création 
- Créer d’abord des vecteurs v1, v2, v3, v4, v5
- eleves=data.frame(prenom=v1,sexe=v2,age=v3,poids=v4,taille=v5)
sup8etplus11 = data.frame(donnees[donnees$Total>7500 & donnees$C100>11,])
- as.data.frame(MATRICE)
- rbind.data.frame & cbind.data.frame entre 2 data frame 
## Information
Str 🡪 donna la structure (aperçu)

Summary 🡪 fournit un premier résumé statistique

Names 🡪 nom des objets

Attach -> permet d’appeler directement les colonnes par leur noms
## Modifier nom des lignes 
- rownames(eleves) = c("el1","el2","el3","el4","el5","el6","el7")
- names(eleves) <- c(« prenomeleves »,etc.)
- names(eleves)[1] <- c(« prenomeleves)
- colnames(eleves) <- c("v1", "v2")
## Sélection
### which
indexY <- which(eleves$v1=="Y")

peut être remplacé par juste indexY = eleves$v1 puis notes[indexY] ou notes[ !indexY]

eleves$v2[indexY]
### normal 
eleves[[1]] & eleves[,1]  🡪 la 1er colonne + son level 

eleves[1] 🡪 la 1er colonne 

eleves$NOMCOLONNES

eleves[[3]][2] 🡪 2ème donnée de la 3ème colonne 

eleves[[5]][eleves[[1]]=="ben"] 🡪 donnée dans la 5ème colonne quand la donnée de la 1er colonne est Ben 
- à la place du == « ben » on peut mettre >5 ou <5 ou !=
- eleves[[1]][eleves[[5]]>mean(eleves[[5]])] 🡪 donnée dans la 1er colonne quand données dans la 5ème colonne est sup à la moyenne des données de la 5ème colonne 
- eleves[eleves[[1]]!="fani",] 🡪 affiche eleves sans la ligne où y a fani dans la 1er colonne 

eleves[c(1:3),] 🡪 obtient tableau de toutes les var des 3 premières lignes 

eleves[,c(4:5)] 🡪 obtient tableau de toutes les données de la colonne 4 et 5 

ordredecroissant = donnees[order(donnees$C100,decreasing=TRUE),] ou ordrecroissant = donnees[order(donnees$C100),]

ordredecroissant[1:3,] ou ordrecroissant[24:26,] 🡪 afficher nom et temps des 3 meilleures du C100
### Subset
subset(eleves,age>5,select=prenom) 🡪 prenom quand age sup à 5 

subset(iris,select=Species)

subset(iris,subset=(Species=="virginica"))
### Split 
l.iris <- split(iris,Species) 🡨 liste 

l.iris$virginica (juste quand species sont virginica)

# Factor
Factor(c(,), ordered) 

Repetition : 
- gl(2,4) : 11112222
	- gl(2,4,labels = c(TRUE, FALSE)) -> T T T T F F F F 
- factor(rep())

interaction : multiplication (porduit cartésien) 

expand.grid(x,y,z) : data.frame en sorti -> produit cartésien
# Tableau
## Ouvrir
Ne pas oublier de set as working directory le bon dossier (files) 

T=read.table("echDecathlon.txt",header=TRUE,sep=";") 🡪 header : en tête, sep : séparation entre les valeurs en ligne (ouvrir notepadd) si rien : \t
## Valeur manquante
sum(is.na(T)) 🡪 combien de valeur manquante 

rowSums(is.na(T)) & colSums(is.na(T)) 🡪 dans quelle ligne/colonne il y a une valeur manquante 

quand on fait la moyenne : ne pas oublier na.rm = TRUE

EXEMPLE: Si on veut l’estimer pour les 100mhaies :

lm(T$X110m.H ~ T$X400m) 🡪 régression linéaire 

🡪 Coefficients:

(Intercept)      T$X400m  

     5.1748       0.1859

🡪 0.1859*48.81+5.1748 (48.81 car c’est la valeur du 400m pour la même ligne où il y a la valeur manquante du 110m.H)
## Covariance
cov(T$Hauteur,T$Longueur,use="complete.obs") 🡪 pour variable hauteur et longueur 
## Matrice corrélation
round(cor(T[1:10],use="complete.obs")) 🡪 pour les 10 épreuves 
## Créer une nouvelle colonne
T=cbind(T,NBM=rowSums(is.na(T))) 🡪 indique le nombre de résultat manquant pour chaque ligne
## Tableau effectif
table(T$NBM)
## Renommer modalités 
Grâce au tableau des effectifs on a la liste des modalités 

> table(D$sexe)

f h m 

7 1 4

--> levels(D$sexe)=c("F","H","H")
## Ajouter une variable
eleves$IMC=eleves$poids/(eleves$taille*eleves$taille)*10000
## Découper en classe et coder
eleves$corpulence=cut(eleves$IMC,c(0,16.5,18.5,25,30,35,40,100))

levels(eleves$corpulence)=c("dénutrition","maigreur","corpulence normale","surpoids","obésité modérée","obésité sévère","obésité morbide ou massive") 🡪 renomme chaque classe découper

levels(eleves$corpulence)=c("maigre","maigre","corpulence normale","gros","gros","gros","gros") 🡪 fusionner les niveaux 
## Exporter dans un fichier texte 
write.table(eleves,file="donneeseleves.txt")
# Graphique – courbe 
Curve

Plot 
- p : points 
- l : lgne polygonale
- b : points et ligne polygonale 
- s : marches (fonction en escalier)
## Densité
curve(dexp(x, rate=2)) 
## Fonction de répartition
curve(pexp(x,rate=2)) 
## Barre
barplot(table(eleves$corpulence)) 🡪 du tableau d’effectif de la corpulence

legend.text = TRUE 🡪 affiche la légende

beside = TRUE 🡪 accumule pas les résultats fait plusieurs barres à côté pour comparer 

ylim 🡪 limite pour y (ylim=c(0,1))
## Nuage de point
Plot(x,y,type= « »)

Type 🡪 l : lines, p : points, b : both, c : petite ligne,..
## Boîte à moustaches 
- plot(c(3,2,1)~factor(c("a","b","b")))

ne fonctionne pas avec un vecteur de caractère 
- boxplot(x)
- boxplot(salaire~sexe)

(horizontal=TRUE) : mettre à l’horizontal 
## Diagramme en bandes 
plot(Mention~Bac) avec mention et bac qui sont des facteurs 
## Histogramme 
normalisé

hist(moyenne, freq=FALSE, breaks=20)

hist(rnorm(100,4,1)) 🡪 des effectifs 

main 🡪 titre graph 
## Tracer surfaces  
persp(x,y,z,theta=30,phi=30,expand=0.5,col="lightblue")
## Diagramme de Cleveland [2]  
dotchart(sort(table(Cars93$Manufacturer)),pch=19,cex=0.8,main="Effectif") 
## Ajouts aux graphiques 
### points 
points(mean(salaire))

points(tapply(salaire,sexe,mean),col="red",pch="*",cex=3) 🡪 mets une * rouge à la moyenne 
### texte 
text(1.3, mean(salaire), paste("moyenne : ",round(mean(salaire),digits=2))) 🡪 moyenne : (sa valeur) 

text(1.1, mean(salaire), "moyenne") 🡪 moyenne 
### titre
title("quartiles du salaire par sexe")
### titre légendaire 
title(sub=" avec les moyennes")
### legend
legend(x,y,yjust=0,c("hommes","femmes"), lwd, lty, col=c(par(‘fg’),’red)

legend(5,7000,legend=c("Beta Gal","Cell Density"), text.col=c("black","red"), pch=c(16,15), col=c("black","red"))

legend("topright",legend=c(), title="",pch = c(1,1),col=c()) 🡪 légende en haut à droite & toujours mettre pch si il y a un symbole dans le graph
### Mise en forme 
Breaks 

Cex.axis 🡪 taille écriture données des axes

Col.main 🡪 couleur écriture titre 
### Couleurs 

PHOTOS 


Colors : obtenir couleurs prédéfinies

Grep : grep("red",colors(),value=TRUE) 🡪 extraire couleurs prédéfinies contenant du rouge 

Rgb : créer sa couleur [rgb(0.7,0.2,0.6) OU rgb(178,51,153,maxColorValue=255)]
### axe
axis : gérer les axes des abscisses et ordonnés (suppression, ajout, etc.) [axis(2,ylim=c(0,1),col="black")] 🡪 1 (gauche) ou 2 (bas) ou 3 (haut) ou 4 (droite)

xlab 🡪 nom x 

ylab 🡪 nom y

mtext("Beta Gal Absorbance",side=1,line=2.5) : side = 1 (gauche) ou 2 (bas) ou 3 (haut) ou 4 (droite)
### Fonction de représentation
Lines 🡪 par ligne polygonale 

Points 🡪 par points 

Abline 🡪 droite dans la pente et l’ordonnée à l’origine sont précisées en entrée de la fonction [abline(v=2 :5, h3 :4, col=’gray’,lty=3)

Segments 🡪 segment dont les extrémités sont précisées 

Polygon 🡪 polygone reliant les points dont les coordonnées sont données par les deux vecteurs d’entrée

Rectangle 🡪 rectangle 

Arrows 🡪 flèches pour des paires de points 
## Identifier les points à la souris 
donnees=data.frame(notemath=c(12,14,15,9),prix=c(4,5,2,1),sexe=factor(c("m","f","f","m")))

plot(donnees$notemath,donnees$prix)

identify(donnees$notemath,donnees$prix, labels=donnees$sexe)  # pb avec Rstudio
## Juxtaposition (partage fenêtre)
Sub : préciser sous-titres pour chacune d’elle
- par(mfrow=c(2,1)) 
- mlayout <- matrix(c(1:3,3),2)

layout(mlayout)
## Par 
box() & par(new=TRUE) : superposition

par(mar=c(5,4,4,4)+0.1) : ajout espace supplémentaire à droite 


PHOTOS


## Fenêtre graphique 
dev.new() : nouvelle sans effacer fenêtre courante

dev.list() : affiche liste fenêtre encore ouvertes [dev.off aussi]

dev.set(x) : passe d’une fenêtre à une autre 

dev.cur() : connaître fenêtre active 
## Exportation graphique
pdf("graf.pdf")  

eleves=donnees

pie(table(eleves$sexe))

dev.off()

getwd()


PHOTOS


ou

windows()

par(mfrow=c(2,2)) 🡪 afficher 4 graphs sur même fenêtre graphique
# Intervalle de confiance
## Par étape
- Moy : estimation ponctuelle de x 

moy <- mean(x)
- Sn : écart-type

sn <- sd(x)
- Erreur standard

erreur_standard <- sn/sqrt(n)
- Quantile 

L <- qt(1-alpha/2,df=n-1)
- Borne 

a <- moy - L*erreur_standard

b <- moy + L*erreur_standard
## Formule
t.test(x, conf.level = 1 - alpha)

attributes(res)

ic <- res$conf.int

ic
## Afficher les bornes des M (M=1000)
for (i in 1:M) { 

x <- rexp(n,rate=4) 

res <- t.test(x, conf.level = 1 - alpha) 

ic <- res$conf.int

print(ic)

}
## Pour savoir combien sur les M (M=1000) sont dans l’intervalle 
nb <- 0

for (i in 1:M) { 

x <- rexp(n,rate=4) 

res <- t.test(x, conf.level = 1 - alpha) 

a <- res$conf.int[1]

b <- res$conf.int[2]

if (EX>a && EX<b){

nb <- nb +1

}

}

nb
## Autre formule (t.test)
borne inf 🡪 t.test(x, conf.level = 1 - alpha)$conf.int[1]

borne sup 🡪 t.test(x, conf.level = 1 - alpha)$conf.int[2]
# Programmation
## Opérations logiques 
== marche pas forcément 🡪 faire all.equal (tenant compte pb arrondis) ou identical (sans tenir compte pb arrondis) 
## For
for ( i in 1 :10) carres[i]=i*i 🡪 créer vecteur carres qui donne le carres des 10 premiers entiers 

for (i in vect) 
## If
if (EX>a && EX<b)

ifelse(condition, instruction1, instruction2)
## While
While (condition){

}
## Repeat
Aucune condition 🡪 sortir qu’avec break
## Fonction dans boucle
Next : passer à itération suivante 

Stop : sortir en émettant une erreur

Break : sortir sans émettre une erreur
## Fonction simple

Cummax : max comulé 

Cummin : min cumulé (calcul progressivement)

Cumprod : prod cumulé 

Cumsum : somme cumulé 

Pmin : min élément par élément 

Pmax : max élément par élément 

Range : diff entre max et min 

Which.min : incdice du minimum 

Which.max : indice du max 

col/rowMeans & Sums

Apply 🡪 (objet, marge, fonction) : app fonction aux lignes ou cols d’une matrice

Lapply/sapply : appliquer fonction pour liste (sapply renvoie vecteur ou matrice si possible) 

Mapply : pour flottant 

Tapply : pour chaine de caractères 

Aggregate : sur plusieurs variables [aggregate(state.x77,list(region=state.region),mean)]

Sweep 🡪 diviser/retrancher éléments [sweep(data.matrix(attitude),2,med.att)] (med.att : soustrait les médianes

By 🡪 appliquer même traitement pour diff sous-échantillons [by(warpbreaks[,1:2],tension,summary)]
## Fonction mathématiques 


PHOTOS 


3 : opérations arithmétiques

Sort() : tri croissant, par défaut 

X[order(x)] : indice des elements tries dans l’ordre 

--> eleves[order(eleves[[5]]),] 🡪 ordonner le data par la colonne 5 

rev : inversion 

rank : rang 

ceiling : partie entire supérieure 

floor : partie entire inférieur 

round : arrondi 

trunc : troncature 

Abs : valeur absolue 

Aprem : transposition généralisée 

Beta : fonction beta 

Combn : générer toutes les combinaisons ordonnée sà m éléments d’un ensemble fini où m entier

lchoose : logariithsme du nombre de combinaisons 

Choose : calcule le nombre de combinaison de k éléments parmi n [coeff binomial] 

Cos : cosinus 

Exp : exponentielle 

Factorial : factorielle 

Gamma : fonction gamma 

Log : logarithme népérien 

Log10 : logarithme décimal 

Sin : sinus 

Sqrt : racine-carré 

T : transposition 

Tan : tangente 

Approx : approximation linéaire 

Chol : décomposition de Cholesky 

Det : déterminant 

Diff : différenication 

Eigen : valeurs/vecteurs propres 

Nlm : minimilisation non-linéaire 

Optimize : optimisation (dimension 1 uniquement) 

Polyroot : zéro d’un polynôme 

Qr : décomposition QR 

Spline : approximation par splines cubiques 

Svd : décomposition en valeurs singulières 

Uniroot : zéro d’une fonction réelle 

Solve : inverser matrice ou résoudre un système linéaire (si sol existe et unique)

Optim : optimisation 🡪 au moins une fonction à minimiser et le point de départ de l’algo (algo itératif) 🡪 peut spécifier la méthode (Nelder-Mead, gradient conjugué (3 variantes), BFGS, BFGS avec contraintes de boîtes, recuit simulé) 

- par : vecteur où la fonction réalise le minimum
- value : valeur de la fonction en ce point
- convergence : indication sur la convergence (0 : converge & non convergent : augmenter nb d’itérations/diminuer le critère d’amélioration) 


PHOTOS 


Intégrale : 
integrate : pour vecteur
- p(0<x<0.5)
	- integrate (f, lower=0, upper = 0.5)$value
- p(x>4)=p(4<x<inf)
	- integrate (f, lower=4, upper = Inf)$value
- p(2<x3)
	- integrate (f, lower=2, upper = 3)$value
	- pexp(3, rate=0.5)-pexp(2, rate=0.5)
- sinon sapply : integrate(function(y){sapply(y,f)}, lower=0, upper=2))
- sinon fonction créé par nous même : 
Integrate(f,borne,borne)$value

f <- function(x) {

  x^2

}

integrate(f,lower,upper)$value

f <- function (x) {

  dexp(x, rate=0.5)

}
## Fonction
Nomfonction=function(x){

}

Mettre return(x) s’il faut ou mettre print

<<- : variable déclaré d’une porté globale 

Args() : affiche arguments d’une fonction 

Replicate 🡪 répéter plusieurs fois une fonction [foo <- function(x=1,y=2) c(x,y) & 

function(n,x,y) replicate(n,foo(x=x,y=y))]

# Proba 

PHOTOS 

Package(mvtnorm) 🡪 calculs autour de la loi normale multivariée 
- dmvnorm : calculer densité
- rmvnorm : simuler échantillon de loi multivariée 🡪 appliquer transformation linéaire adéquat (3)
## Densité 
d[nomloi]

peut faire graph (plot(x,d(x))

fhat <- dgamma(x,shape=par$estimate[1],rate=par$estimate[2])

plot(x,fhat,type="l",col="red",lwd=2,xlab="",ylab="",main="Densité")
## Fonction de répartition P(X<x)
p[nomloi]

(lower.tail = FALSE) : fonction de survie 

ou

fdr <- function(x) {

  dexp(x,rate=2)

}

integrate(fdr,lower=-Inf,upper=2)$value

Fhat <- pgamma(x,shape=par$estimate[1],rate=par$estimate[2])

plot(x,Fhat,type="l",col="red",lwd=2,xlab="",ylab="",main="Fonction de répartition")
## Fonction quantile F(u)<=p
q[nomloi]

qexp(0.8, rate = 3)
## Inverse (F et F[-1])
qnorm(pnorm(5, mean=1, sd=4), mean=1, sd=4) doit valoir 5 

graphique : curve(pnorm(qnorm(x,mean=1,sd=4),mean=1,sd=4),from = 0.01, to = 0.99)
## Observations aléatoires indep
r[nomloi]

set.seed() : choisir initialisation du générateur de nombres pseudo-aléa 

x <- rexp(n,rate=4)

v5=round(rnorm(7,100,10)) 🡪 7 nombres avec une valeur autour de 100 (mean) avec 10 + ou – (sd)

sample(x,3) : 
- pour lois discrètes 
- replace = TRUE : avec remise (sans par défaut) 
- prob=c(…) (au lieu de 3)
## Estimation paramétrique pour un échantillon 
Fitdistr(x, « gamma ») 
- estimation des deux paramètres de loi gamma
	- beta, Cauchy, χ2, exponentielle, Fisher, gamma, géométrique, log-normale, logistic, binomiale négative, normale, Poisson, Student et Weibull 

- library MASS

- Contient : 
	- Estimate : estimation du ou (des) paramètre(s)
	- Sq : variance(s) estimée(s) du (des) paramètre(s) 
	- Vcov : matrice de variance-covariance estimée 
	- Loglik : maximum de la fonction de vraisemblance 
	- N : nombre d’observations 
## Propriétés asymptotiques d’un estimateur 
lambda <- 1

n <- 1000

X <- rexp(n,lambda)

lambda.hat <- (1:n)/cumsum(X)

plot(10:n,lambda.hat[10:n],type="l",lwd=2,xlab="Taille de l'échantillon",ylab="Estimation")

abline(h=lambda,col="red",lwd=2)
## Normalité asymptotique de l’estimateur
lambda <- 1

n <- 100

nrep <- 5000

set.seed(1)

X <- matrix(rexp(n*nrep,lambda),ncol=nrep)

lambda.hat <- 1/colMeans(X)

lambda.hat <- lambda*sqrt(n)*(lambda.hat-lambda)

hist(lambda.hat,prob=TRUE)

x <- seq(from=-3,by=0.01,to=3)

y <- dnorm(x)

lines(x,y,col="red",lwd=2)

qqnorm(lambda.hat)

qqline(lambda.hat,col="red",lwd=2)

--> Droite de Henry + histogramme des estimateurs (+ densité de loi normale centrée réduite)
## Normalité asymptotique avec méthode delta 
lambda <- 1

n <- 100

nrep <- 5000

set.seed(1)

X <- matrix(rexp(n*nrep,lambda),ncol=nrep)

lambda.hat <- 1/colMeans(X)

loglambda.hat <- log(lambda.hat)

loglambda.hat <- sqrt(n)*(loglambda.hat-log(lambda))

qqnorm(loglambda.hat)

qqline(loglambda.hat,col="red",lwd=2)

hist(loglambda.hat,prob=TRUE)

x <- seq(from=-3,by=0.01,to=3)

y <- dnorm(x)

lines(x,y,col="red",lwd=2)

--> Droite de Henry + histogramme des estimateurs (+ densité de loi normale centrée réduite)

--> Fourni intervalle de confiance nécessairement inclus dans R+

# Statistiques descriptives univarié
## Variable qualitative 
Table(genotype$Litter) : table de contingence 

Prop.table(table_contingence)
- Tableau des fréquences
- peut faire un cbind des fréquences de diff vars
- pour graphique : barplot & pie  
## Variable quantitative 
Mean : moyenne empirique [mean(x,trim=0.1  retire les 10% plus petites et plus grands obs]

weighted.mean	: moyenne pondérée empirique

median : médiane empirique

min : minimum

max : maximum

IQR : intervalle inte-quartile empirique

Var : variance empirique

Sd : écart-type empirique

Quantile : quantiles

Summary : 6 caractéristiques principales

Scale : centrer/réduire une var 
### Discrète 
Table : table de contingence 

Pop.table : tableau de fréquence

Barplot/pie : graph
### Continue 
Cut : regrouper les données [cut(x,breaks=x)] 
- x : 5 🡪 clases de même amplitude 
- x : c(35,46,82) 🡪 on choisit 

Table : contingence 

Hist : 
- pas mettre prop.table, mettre var direct
- hauteur : 
	- effectif de la classe
	- densité de fréquence de la classe (prob = TRUE) : si on veut comparer hist correspondant à 2 sous-pop OU si classes ne sont pas de même amplitude 
boxplot 

# Statistiques descriptives bivarié
## Deux variables qualitatives 
Faire sous tableau de ces deux vars : with(ton_tableau, table(x,y,exclude=k))

--> peut ajouter une marge : addmargins()

- margin.table : calcul du nombre d’obs 
- margin.table(x,1) : calcul effectifs pour x [si 2 pour y]
  
Plot : graph par rectangle (aire en fonction de modalité la plus fréquente) 

Prop.table : tableau des fréquences 
## Deux variables quantitatives 
with(iris,cov(Petal.Length,Petal.Width)) : covariance

with(iris,cor(Petal.Length,Petal.Width)) : corrélation 

- plus proche de 1 ou -1 : plus nuage de point aligné le long de la droite ajustée 
- cor(…,method=) : 
	- spearman : préciser valeur {\\ spearman}
	- kendall : préciser valeur kendall
	- Pearson (par défaut)
droite de régression : with(iris,lsfit(x=Petal.Length,y=Petal.Width))
- résidus 
- coeff 
- après plot : abline(a=iris.mco$coefficients[1],b=iris.mco$coefficients[2],col="red",lwd=2) [affiche droite moindre carrés]

pairs(iris[,1:4])
## Variable quantitative et variable qualitative 
Unstack(iris[,c(2,5)]) : construire liste avec autant de slots que de sous-pops

Boxplot(x~y) 

OU bxplot(x~y) [library(lattice)

# Test de comparaison pour échantillons gaussiens 
tester hypothèse nulle moy1 = my2 🡪 pvalue inf à 5% : rejette l’hypothèse nulle d’égalité des moyennes 
## Test d’égalité de moyennes de deux échantillons gaussiens 
Student : vars inconnus et identiques 
- t.test
	- 2 vecteurs : with(data, t.test(vect1, vect2, var.equal=TRUE))
	- Stack(data) : tab 1er col rendements et 2ème col variable qualitative (2 vecteurs) 🡪 t.test(values~ind, var.equal = TRUE, data=stack(data))
- si autour de la puissance du test : power.t.test
Welch : vars inconnus et différentes [var.equal fixé à False par défaut]
- t.test 
	- 2 vecteurs : with(data, t.test(vect1, vect2))
	- oneway.test(values~ind, data=..) 
Echantillons appariés : 
- t.test
	- 2 vecteurs : with(data, t.test(vect1, vect2, paired =TRUE))
Comparaisons 2 à 2 plusieurs échantillons : test de Student 
- pairwise.t.test(col1, col2) [pas hésiter à appliquer attach(data) puis detach(data)] : 
	- correction au calculs des p_valeurs appliqué (méthode Holm par défaut) : bonferroni, hochberg, hommel, BH ou fdr, BR
	- par exemple, si on veut ne pas prendre en compte de correction : pairwise.t.test(col1, col2, p.adjust= « none »)
	- pool.sd : choisir si écart-type est estimé à partir de l’ensemble des obs ou pas 
## Test d’égalité de variances pour des échantillons gaussiens 
Fisher : 
- with(data, var.test(vecteur1, vecteur2))
Bartlett : tester homogénéité des variances & au moins 3 échantillons gaussiens 
- avec liste : bartlett.test(data)
- avec 2 vecteurs : with(data, : bartlett.test(vecteur1, vecteur2)) [doit sûrement faire stack(data) avant]

# Méthodes non-paramétriques 
## Estimation non-para de la fonction de répartition
Estimateur = ecdf(data) [fonction en sorti] 

Calculer fonction de rép empirique en un (ou plusieurs) points données : Estimateur(c(x,y))

Différents caractéristiques : summary(Estimateur)

Représentation : plot(Estimateur, main=’’,xlab=’’,ylab=’’)

Peut rajouter :
- do.points = False [supprime points]
- verticals = False [représenter les marches : afficher saut verticaux]

Survie empirique = 1 - Estimateur (seq(from=0,by=0.1,to=max(data)*1.2))

Comparer avec fonction de rép estimée sur la base d’un modèle para, en ajustant une loi gamma : 
- par = fitdistr(data, « gamma »)
- x = seq(from=0,by=0.1,to=max(data)*1.2)
- Fhat = pgamma(x, shape=par$estimate[1],rate=par$estimate[2])
- Lines(x, Fhat,col=’’,lwd=2)
## Estimation non-para de la densité 
quantile
### Histogramme
Hist(data,prob=TRUE,main= ‘’,xlab=’’,ylab=’’,col=grey(0.9),border=grey(0.2))

Prob = TRUE :  ordonnée les densités de fréquences pas les effectifs 

Beaks=c(…) ou 10 : définir classe 

- Fonction pour définir les classes : 
	- Règles prédéfinies par r : 


TABLEAU


	- Règle de Yule (pas prédéfini) : 
nclass.Yule <- function(x) {

 n <- length(x)
 
 res <- floor(2.5*n^(1/4))
 
 return(res)

}


Right = false : intervalles ouverts à droite et fermés à gauche [l’inverse par défaut]

Obtenir informations : hist(data, prob=TRUE, plot = FALSE) 
- Breaks : borne des classes 
- Mids : milieu de chaque classe
- Counts : effectifs de chaque classe 
- Density : densité de fréquence 
### Estimateur à noyau 
Version lissée ou régularisée de l’histogramme 

Plot(density(data),col=’’,lwd=2)

Kernel : option de fonction density pour choisir le noyau 
### Comparaison
load("Vehicles.Rd")

hist(vehicles,prob=TRUE,main="",xlab="",ylab="",ylim=c(0,0.06),col=grey(0.9),border=grey(0.2))

lines(density(vehicles),col="blue",lwd=2)

lines(x,fhat,col="red",lwd=2)

legtxt <- c("Histogramme","Estimateur à noyau","Estimation paramétrique")

couleur <- c("black","blue","red")

legend("topright",legend=legtxt,lwd=2,col=couleur)

# E(Xn)=E(X)
M <- 1000 # nombre d'echantillons 

n <- 10 # taille des echantillons 

moyenne <- numeric(M) #vecteur de taille M dont ttes les composantes sont = à 0

variance <- numeric(M)

for (i in 1:M) { 

  x <- rexp(n, rate=3) 
  
  moyenne[i] <- mean(x) 
  
  variance[i] <- var(x)
  
} 

mean(moyenne)-1/3

# V(Xn)==V(X)/n
M <- 1000  

n <- 10  

moyenne <- numeric(M)

for (i in 1:M) { 

  x <- rexp(n, rate=3) 
  
  moyenne[i] <- mean(x) 
  
}

var(moyenne)-(1/9)/n 

# Markdown
‘’’{r, echo= True} 🡪 r : dire qu’on code en r

Ecrire comme latek 🡪 \begin, etc.

"#" 🡪 première section 

‘’’{r TradCol, echo=False} 🡪 n’affiche pas, si True (par défaut) affiche [mettre code si pertinant : ciblé le public]

# Création fichier HTML
## Pour commencer : 
library(R2HTML)


HTMLInitFile(outdir=getwd(),filename="monrapportTP")

decat2016<-read.table(file ="decathlon_2016.txt",header=TRUE,sep="\t",dec=".", row.names=1)

decat2016 🡪 récupère les données de decathlon 

## Mise en pages

1er titre : HTML.title(« Rapport Décathlon 2016 », HR=1)

Sous titre : HTML.title(« 1- Présentation des données », HR=2)

Sous sous titre : HTML.title(« a. Les courses », HR=3)

Phrase : phrase2 <- paste(« Nous retrouvons dans la Table suivante, les valeurs moyennes des épreuves de courses du décathlon. »)

HTML(phrase2)

Afficher tableau : HTML(head(decat2016))

## Faire tableau (des mins et maxs par exemple) : 

min100 <- min(decat2016$C100)

min400 <- min(decat2016$C400)

min110 <- min(decat2016$C110H)

min1500 <- min(decat2016$C1500)

min <- c(min100,min400,min110,min1500)

mint<-matrix(min

max100 <- max(decat2016$C100)

max400 <- max(decat2016$C400)

max110 <- max(decat2016$C110H)

max1500 <- max(decat2016$C1500)

max <- c(max100,max400,max110,max1500)

maxt<-matrix(max)

tablo <- data.frame(minimum = mint, maximum = maxt, row.names=c(« 100m », « 400m », « 110mH », « 1500m »))

HTML(tablo, digits=4)

Insérer graph : HTMLInsertGraph("figure3.PNG",Caption="Distribution des épreuves de sauts")

## Finir : HTMLEndFile()

# Connexion à une base de données 
Page 18 du cours stid

Ouvrir library : library(RODBC)

Créer un id associant fichier access et le pilote access (cours) : bdd <- odbcConnect("base")

Récupérer tables (MAccident et MDate ici) + affichier les 6 premiètres lignes des 2 tables : 

accidents <- sqlFetch(bdd,"Maccident") 🡪 récupérer table 

head(accidents)

dates <- sqlFetch(bdd, "MDate")

head(dates)

Jointure avec sqldf 🡪 la nommer et afficher les 6 premiers accidents : 

library(sqldf)

jointure1 <- sqldf ("select * from accidents inner join dates on accidents.date_id = dates.date_id")

head(jointure1)
