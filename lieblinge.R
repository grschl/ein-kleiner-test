# Datensatz einlesen:
lieblinge <- read.csv(file = "~/GitHub/ein-kleiner-test/lieblinge.csv", 
                      header = TRUE, sep = "")

# nominale Variablen in Faktoren umwandeln
lieblinge$Lieblingsfarbe <- factor(lieblinge$Lieblingsfarbe)
lieblinge$Lieblingstier <- factor(lieblinge$Lieblingstier)

# Deskription der Daten
str(lieblinge)
# 'data.frame':	13 obs. of  4 variables:
# $ ID            : int  1 2 3 4 5 6 7 8 9 10 ...
# $ Alter         : int  20 23 30 18 19 24 18 19 21 25 ...
# $ Lieblingsfarbe: Factor w/ 4 levels "blau","gelb",..: 1 3 4 1 2 4 4 4 3 3 ...
# $ Lieblingstier : Factor w/ 9 levels "Bär","Elefant",..: 2 7 5 6 5 5 5 3 1 9 ...

summary(lieblinge$Alter)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#  18      19      21      23      25      35 

table(lieblinge$Lieblingsfarbe)
# blau gelb grün  rot 
#    4    2    3    4 

table(lieblinge$Lieblingstier)
# Bär Elefant Giraffe    Hase    Hund   Katze     Kuh   Pferd   Zebra 
#   1       1       1       1       4       2       1       1       1 

# Visualisierung
hist(lieblinge$Alter, breaks = 7, freq=FALSE, 
     main = "Histogramm: Alter", xlab="Alter", ylab="Dichte")

barplot(table(lieblinge$Lieblingsfarbe), main = "Balkendiagramm: Lieblingsfarben", 
        xlab = "Farbe", ylab="Häufigkeiten")

barplot(table(lieblinge$Lieblingstier), main = "Balkendiagramm: Lieblingstiere",
        xlab = "Farbe", ylab = "Häufigkeit")


