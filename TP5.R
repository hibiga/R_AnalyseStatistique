#Partie I - Création d'un fichier HTML

library(R2HTML)
HTMLInitFile(outdir=getwd(),filename="monrapportTP")
decat2016<-read.table(file ="decathlon_2016.txt",header=TRUE,sep="\t",dec=".", row.names=1)
decat2016

HTML.title("Rapport Décathlon 2016", HR=1)
HTML.title("1- Présentation des données", HR=2)
phrase1 <- paste("Les données étudiées proviennent de l'épreuve de Décathlon des jeux Olympiques de 2016. Le nombre d'athlètes ayant participé à la compétition est de : ", dim(decat2016)[1],". La Table suivante donne un aperçu du fichier de données :")
HTML(phrase1)
HTML(head(decat2016))

HTML.title("2- Résultats des épreuves", HR=2)
HTML.title("a. Les courses", HR=3)
phrase2 <- paste("Nous retrouvons dans la Table suivante, les valeurs moyennes des épreuves de courses du décathlon.")
HTML(phrase2)
moy100 <- mean(decat2016$C100)
moy400 <- mean(decat2016$C400)
moy110 <- mean(decat2016$C110H)
moy1500 <- mean(decat2016$C1500)
moy <- c(moy100,moy400,moy110,moy1500)
moyt<-matrix(moy)

min100 <- min(decat2016$C100)
min400 <- min(decat2016$C400)
min110 <- min(decat2016$C110H)
min1500 <- min(decat2016$C1500)
min <- c(min100,min400,min110,min1500)
mint<-matrix(min)

max100 <- max(decat2016$C100)
max400 <- max(decat2016$C400)
max110 <- max(decat2016$C110H)
max1500 <- max(decat2016$C1500)
max <- c(max100,max400,max110,max1500)
maxt<-matrix(max)

tablo <- data.frame(moyt,mint,maxt)

HTML(head(tablo))

HTMLEndFile()

























