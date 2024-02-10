T=read.table("echDecathlon.txt",header=TRUE,sep=";")
T
attributes(T)
names(T)
length(T)
sum(is.na(T))
rowSums(is.na(T))
colSums(is.na(T))
mean(T$Hauteur,na.rm=TRUE)
mean(T$Longueur,na.rm=TRUE)
var(T$Hauteur,na.rm=TRUE)
var(T$Longueur,na.rm=TRUE)
cov(T$Hauteur,T$Longueur,use="complete.obs")
round(cor(T[1:10],use="complete.obs"))
T=cbind(T,NBM=rowSums(is.na(T)))
row.names(T[T$NBM<2,])
lm(T$X110m.H ~ T$X400m)
plot(lm(T$X110m.H ~ T$X400m))
0.1859*48.81+5.1748

D=read.table("donnees.txt",header=TRUE,sep="\t")
D
table(D$sexe)
levels(D$sexe)=c("F","H","H")

v1=c("abel","ben","cati","didi","eli","fani","gari")
v2=c("m","m","f","m","m","f","m")
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
eleves$corpulence
levels(eleves$corpulence)=c("dénutrition","maigreur","corpulence normale","surpoids","obésité modérée","obésité sévère","obésité morbide ou massive")
eleves$corpulence
levels(eleves$corpulence)=c("maigre","maigre","corpulence normale","gros","gros","gros","gros")
eleves$corpulence
table(eleves$corpulence)
barplot(table(eleves$corpulence))
eleves

write.table(eleves,file="donneeseleves.txt")
A=read.table("donneeseleves.txt",header=TRUE,sep="")
A
barplot(table(A$corpulence))
A$corpulence=ordered(A$corpulence,levels=c("maigre","corpulence normale","gros"))
A
sort(A$IMC)
A=c(A$prenom,A$sexe,A$poids,A$taille,sort(A$IMC),A$corpulence)
A

save(A, file="TP6.RData")

x=factor(c("a","a","b","b","a"),levels=c("a","b","c"))
