#Partie II - Connexion à une base de données

#suivre la procedure page 18 du cours

#question 1
library(RODBC)

#question 2
bdd <- odbcConnect("base")

#question 3: cours page 20
accidents <- sqlFetch(bdd,"Maccident")
head(accidents)
dates <- sqlFetch(bdd, "MDate")
head(dates)

#question 4
library(sqldf)
jointure1 <- sqldf ("select * from accidents inner join dates on accidents.date_id = dates.date_id")
head(jointure1)

#question 5
luminosite <- sqlFetch(bdd,"MLuminosite")
head(luminosite)

