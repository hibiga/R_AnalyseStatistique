x=c(-2,-1,0,1,2)
x*5
y=rep(4,5)
y
(x+y)/2
mean(x)
mean(y)
sd(y)
sd(x)

z=paste(x,y)
z
z=c(x,y)
z
t=c("a","b",rep("c",4))
t
mode(z)
mode(t)
length(z)
length(t)
attributes(z)
attributes(t)

x+z
x[c(1)]+y[c(5)]

x[c(3)]=7
x

z[c(1:4)]
z[seq(1,10,by=2)]
t[seq(1,6,by=2)]
ztronque = z[-c(1,10)]
ztronque
zpositif
zpositif=z[z>=0]
length(zpositif)

x[order(x)]
sort(x)

prenom=c("abel","ben","cati","didi","eli","fani")
attributes(prenom)
sexe=factor(c("m","m","f","m","m","f"))
bac=factor(c("ES","S","S","STI","ES","ES"))
attributes(bac)
levels(bac)
mode(bac)
is.numeric(bac)
is.factor(bac)
niveau=ordered(c("AB","B","AB","AB","B","I"))
is.factor(prenom)
is.factor(niveau)
frequency(niveau)
table(niveau)
frequence=table(niveau)/6
plot(frequence)
table(bac,niveau)
prenom[niveau=="AB"]
prenom[niveau=="AB"&sexe=="f"]

x=matrix(c(1,2,3,4,5,6,7,1,2,3,4,5,6,7),nrow=7,ncol=2)
x
attributes(x)
i5=matrix(c(1,1,1,1,1,1,1),nrow=1)
i5
I5=matrix(c(1,1,1,1,1,1,1),ncol=1)
I5
Cx = x-I5%*%i5%*%x/7
Cx
VX=(t(Cx)%*%Cx)/7
VX
var(x)
w = rnorm(10, mean = 5, sd = 2)
w
y = runif(10, min = -5, max = 0)
y
Y=matrix(c(w,y),nrow=10,ncol=2)
Y
Y2 = cbind(w,y,deparse.level=1)
Y2
Z = rbind(x,Y,deparse.level=1)
Z
rownames(z, do.NULL = TRUE, prefix = "lignes")
colnames(z, do.NULL = TRUE, prefix = "colonnes")

save.image(file = "TP2.RData")
