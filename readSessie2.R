# Lokaal csv-bestand 

## Lees data uit online csv-bestand
cpsDF <- read.csv(file = "https://drive.google.com/file/d/0BxRLH-w1Cn2RYkpNWDlPVjNJdEE", header = FALSE, fill = TRUE)

## Bekijk eerste regels van data
head(cpsDF)

## Bekijk de structuur van data
str(cpsDF)

## Bekijk de kwaliteit van data
summary(cpsDF)