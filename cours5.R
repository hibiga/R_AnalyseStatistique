# -------  Chap V : Representations graphiques
#                   Exemples du polycop de cours et quelques autres

# ----------          1 --  Fonction plot  ------------------
# --- Nuage de points
plot(x=c(1,4,7),y=c(3,2,1))	
plot(c(3,2,1)~c(1,4,7))
# Graphe d'une fonction
plot(x=1:10,y=sin(1:10))
plot(x=1:10,y=sin(1:10),type="l")
plot(x=seq(1,10,by=0.05),y=sin(seq(1,10,by=0.05)))
plot(x=seq(1,10,by=0.05),y=sin(seq(1,10,by=0.05)),type="l")
plot(sin,1,10)
? curve

# --- Boites à moustaches
plot(c(3,2,1)~factor(c("a","b","b")))
plot(c(3,2,1)~c("a","b","b")) # : ne fonctionne pas avec un vecteur de caractères
salaire=c(3,4,5,6,5,8,9)
sexe=factor(c("f","f","f","m","m","m","m"))
plot(sexe,salaire)  # boxplot
plot(salaire~sexe)
? boxplot
boxplot(salaire~sexe)

# --- Diagrammme en bandes
Mention=factor(c("TB","B","TB","B","TB","B","TB"))
Bac=factor(c("ES","S","S","ES","S","S","S"))
plot(Mention~Bac)

note=rnorm(100,10,3)
classe=factor(floor(3*runif(100)))
plot(classe~note)
plot(note~classe)

# ----------          2 --  Graphiques statistiques de base  ------------------
hist(rnorm(100,4,1))  # histogramme des effectifs
?hist
hist(rnorm(100,4,1),freq=FALSE)  # densité. Aire totale vaut 1
hist(rnorm(100,4,1),freq=FALSE,breaks=c(1,3,4,5,7))

barplot(table(Mention))
barplot(table(Mention,Bac))  # effectifs
?barplot
barplot(table(Mention,Bac),legend.text=TRUE) 

barplot(table(Mention,Bac),legend.text=TRUE,beside=TRUE)

# pourcentages des mentions pour chaque série de bac
T=table(Bac,Mention);T
Tfreq=T/rowSums(T);Tfreq
# Donner une aide à la lecture pour l'expression des pourcentages
barplot(Tfreq,legend.text=TRUE)
barplot(t(Tfreq),legend.text=TRUE)

plot(Mention~Bac)   # en plus les pourcentages des conditions

boxplot(salaire)
boxplot(salaire~sexe)

# ----------           3 --- Ajouts aux graphiques
# de texte, points, droites 
boxplot(salaire)
?points
points(mean(salaire))
text(1.1, mean(salaire), "moyenne")
text(1.3, mean(salaire), paste("moyenne : ",round(mean(salaire),digits=2)))

boxplot(salaire~sexe)
points(tapply(salaire,sexe,mean),col="red",pch="*",cex=3)
title("quartiles du salaire par sexe")
title(sub=" avec les moyennes")

# ---------          4  --- Identifier les points à la souris

donnees=data.frame(notemath=c(12,14,15,9),prix=c(4,5,2,1),sexe=factor(c("m","f","f","m")))
plot(donnees$notemath,donnees$prix)
identify(donnees$notemath,donnees$prix, labels=donnees$sexe)  # pb avec Rstudio ...
? identify

# --------        5 ---   Mise en forme des graphiques
? par
hist(donnees$notemath, breaks=20,cex.axis=2,col.main="red")

# juxtaposition
X=rnorm(50,2,1)
F=factor(round(runif(50,1,2)),labels=c("h","f"))
par(mfrow=c(2,1))
hist(X[F=="h"],main="hist pour hommes",xlab="variable X")
hist(X[F=="f"])
par(mfrow=c(1,1))

# superposition
hist(X,freq=FALSE, xlim=c(-2,6))
par(new=TRUE)
plot(density(X),main="", xlim=c(-2,6), col="red")

# ----------------   6 --- Couleurs dans graphiques
Y=rbinom(50,4,0.2)
plot(Y~X)
couleur=c("blue","red")[F]
F[1:5];couleur[1:5]
plot(Y~X,col=couleur)
legend("topright",legend=c("Homme","Femme"), title="sexe",pch = c(1,1),col=c("blue","red"))
? legend

# --------        7 ---   Exportation de graphiques
pdf("graf.pdf")  # ? pdf
eleves=donnees
pie(table(eleves$sexe))
dev.off()
getwd()







