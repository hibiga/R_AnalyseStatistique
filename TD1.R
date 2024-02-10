#1
curve(dnorm(x), xlim=c(-4,5))
d <- 2
curve(dnorm(x, d, 1), add = TRUE)

#2
w1 <- 1/3
w2 <- 2/3
curve(dnorm(x)*w1, xlim=c(-5,5))
curve(dnorm(x, d, 1)*w2, add = TRUE)

#3
curve(dnorm(x)/dnorm(x, d, 1), xlim=c(-5,5), ylim=c(0,5000))
seuil <- w2/w1; seuil
abline(h=2)
#Si x<x0 affecter x à w1 sinon à w2

#4
fx <- x #fonction discriminante linéaire 
#x>x0 -> w2 sinon w1
#x >= le-B/alpha

#5
#p(x) <- dnorm(x)*w1+dnorm(x, d, 1)*w2;px
curve(dnorm(x)*w1/(dnorm(x)*w1+dnorm(x, d, 1)*w2), xlim=c(-5,5))
curve(dnorm(x, d, 1)*w2/(dnorm(x)*w1+dnorm(x, d, 1)*w2), add=T)

#6

#7
curve(dnorm(x)*w1/(dnorm(x)*w1+dnorm(x, d, 1)*w2), xlim=c(-5,5))
abline(h=1-seuil)

#8
