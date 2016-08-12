# Lokaal csv-bestand 

## Lees data uit lokaal csv-bestand
cpsDF <- read.csv("CPSData.csv", fill = TRUE)

## Bekijk eerste regels van data
head(cpsDF)

## Bekijk de structuur van data
str(cpsDF)

## Bekijk de kwaliteit van data
summary(cpsDF)