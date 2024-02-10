v1=c("abel","ben","cati","didi","eli","fani","gari")
v2=factor(c("m","m","f","m","m","f","m"))
v3=c(4,4,5,5,6,6,6)
v4 = round(rnorm(7,25,10))
v4
v5=round(rnorm(7,100,10))
v5
eleves=data.frame(prenom=v1,sexe=v2,age=v3,poids=v4,taille=v5)
eleves
eleves$IMC=eleves$poids/(eleves$taille*eleves$taille)*10000
eleves$IMC
eleves$corpulence=cut(IMC,c(0,16.5,18.5,25,30,35,40,100))
levels(eleves$corpulence)=c("dénutrition","maigreur","corpulence normale","surpoids","obésité modérée","obésité sévère","obésité morbide ou massive")
levels(eleves$corpulence)=c("maigre","maigre","corpulence normale","gros","gros","gros","gros")
eleves
barplot(table(eleves$corpulence)/7,ylab="frequence", ylim=c(0,1), col=c("blue","green","red"),main="corpulence")
barplot(table(eleves$sexe,eleves$corpulence), legend=levels(eleves$sexe),beside=TRUE, col=c("mistyrose","lightblue"))
plot(eleves$corpulence~eleves$sexe, col=c("blue","green","red"))
legend("topright",levels(eleves$corpulence),text.col=c("blue","green","red"),bg="white")
plot(eleves$taille,eleves$poids,"n")
couleur=c("red","blue") [eleves$sexe]
text(eleves$taille,eleves$poids,eleves$prenom,col=couleur)

midpts=barplot(table(eleves$sexe,eleves$corpulence))
barplot(table(eleves$sexe,eleves$corpulence),col=c("mistyrose","lightblue"),legends=levels(eleves$sexe))x = 
text(rep(midpts,each=2),apply(table(eleves$sexe,eleves$corpulence),2,cumsum)
     - table(eleves$sexe,eleves$corpulence)/2,
    table(table(eleves$sexe,eleves$corpulence)