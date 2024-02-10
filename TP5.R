carres=NULL
for ( i in 1 :10) carres[i]=i*i
carres
is.vector(carres)
V=(1:10)^2
V

T=2*floor(runif(30,0,2))-1
T
sum(T)
A=NULL
for (k in 1:10000) {
  T=2*floor(runif(30,0,2))-1 
  A[k]=sum(T)
}
A
hist(A)

iris
str(iris)
for (i in 1:5) {
  if (is.numeric(iris[[i]])) { 
    print(mean(iris[[i]]))
    print(sd(iris[[i]]))
  } 
  else { 
    print(table(iris[[i]]))
  }
}

UneFonction=function(x) {
  if (x>0) {
    x=x*2
  }
  else {
    x = x*(-1)
  }
  return(x)
}

x=-5:5
y=NULL
for (i in 1:11) {
  y[i]=UneFonction(x[i])
}
plot(x,y,type="l")
y

s=NULL
for (i in 0:10) {
  s[i]=sin(i)
}
s

FonctionSinus=function(n) {
  for (i in 0:n) {
    s[i]=sin(i)
  }
  s
}
FonctionSinus(10)

Saut=function(m) {
  T=2*floor(runif(m,0,2))-1
  sum(T)
}
Saut(30)

resume=function(DF){
  liste=list()
  L=length(DF)
  for (i in 1:L){
    if (is.numeric(DF[[i]])) { 
      liste[[i]]=c(mean(DF[[i]]),sd(DF[[i]]))
    } 
    else { 
      liste[[i]]=table(DF[[i]])
    }
  }
  names(liste)=names(DF)
  return(liste)
}

resume(iris)

H=NULL
resumevar=function(VAR){
  if (is.numeric(VAR)){
    H=c(mean(VAR),sd(VAR))
  }
  else{ 
    H=table(VAR)
  }
  return(H)
}

lapply(carres,sqrt)
sapply(carres,sqrt)

iris[,sapply(iris,is.numeric)]

colMeans(iris[,sapply(iris,is.numeric)])
sapply(iris[,sapply(iris,is.numeric)],mean)

resumevar(iris[[1]])
sapply(iris,resumevar)

P=NULL
resume2=function(DF){
  if (is.numeric(DF)){
    P=c(sapply(iris[,sapply(iris,is.numeric)],mean),sapply(iris[,sapply(iris,is.numeric)],sd))
  }
  else{ 
    P=table(DF)
  }
  return(P)
}

resume2(iris)
