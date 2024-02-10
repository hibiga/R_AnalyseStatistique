un=list(a=c(2,3),b=c("h","j"),d=c(TRUE,FALSE))
un
attributes(un)
Stid=list(NbEtud=c(39,26),bac=factor(c("S","ES","ST")))
attributes(Stid)
names(Stid)
class(Stid)
length(Stid)
Stid[[2]][3]
length(Stid[[1]])
length(Stid[[2]])

notes=list(anglais=c(12,9),math=c(14,15),gym=c(17,15,13,17))
notes
mean(notes[[1]])
mean(notes[[2]])
mean(notes[[3]])
lapply(notes,mean)
lapply(notes,mean)[-2]
mean(c(mean(notes[[1]]),mean(notes[[2]]),mean(notes[[3]])))
weighted.mean(c(mean(notes[[1]]),mean(notes[[2]]),mean(notes[[3]])),c(2,2,4))
mean(unlist(notes))

x=rnorm(10,5,2)
x
y=runif(10,-5,0)
y
rl = lm(x ~ y)
names(rl)
rl

v1=c("abel","ben","cati","didi","eli","fani","gari")
v2=c("m","m","f","m","m","f","m")
v3=c(4,4,5,5,6,6,6)
v4 = round(rnorm(7,25,10))
v4
v5=round(rnorm(7,100,10))
v5
eleves=data.frame(prenom=v1,sexe=v2,age=v3,poids=v4,taille=v5)
eleves
class(eleves)
length(eleves)
attributes(eleves)
names(eleves)
str(eleves)
row.names(eleves) = c("el1","el2","el3","el4","el5","el6","el7")
attributes(eleves)
str(eleves)
summary(eleves)

is.factor(eleves[[1]])
is.factor(eleves[[2]])
is.factor(eleves[[3]])
is.factor(eleves[[4]])
is.factor(eleves[[5]])
class(eleves[[2]])
length(eleves[[2]])
levels(eleves[[2]])
eleves[[3]][2]
eleves[[5]][eleves[[1]]=="ben"]

eleves[[1]][eleves[[3]]>5]
eleves[c(1:3),]
eleves[,c(4:5)]
eleves[[1]][eleves[[5]]>mean(eleves[[5]])]
eleves[[1]][eleves[[5]]>mean(eleves[[5]]) | eleves[[3]]>5]
eleves[[1]][eleves[[3]]!=4]
eleves[eleves[[1]]!="fani",]

subset(eleves,age>5,select=prenom)
subset(eleves,select=c(4:5))
subset(eleves,taille>mean(taille))
subset(eleves,taille>mean(taille) | age>5)    
subset(eleves,age!=4)
subset(eleves,prenom!="fani")

eleves[order(eleves[[5]]),]

T=read.table("donnees.txt",header=TRUE,sep="\t")
T
