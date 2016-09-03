

## Vectoren en classes
Plaats <- c("Warszawa", "London", "Paris")
class(Plaats)
Geslacht <- c("Man", "Man", "Vrouw")
class(Geslacht)
Geslacht <- as.factor(Geslacht)
class(Geslacht)

## Vectorindices
Plaats[2]

## Vectorelementen toevoegen.
Plaats[4] <- "Amsterdam"
Plaats
Plaats <- Plaats[-3]
Plaats

## Data frame structuur
Land <- c("Polska", "UK", "Nederland")
Locatie <- data.frame(Plaats, Land)
class(Locatie)
Locatie[3,1]
Locatie[3,]
Locatie[,2]

## Data frame structuur
Locatie$Land
Locatie$Plaats[1]

## Vragenset Basis
### 1
Locatie$Plaats <- as.character(Locatie$Plaats)
Locatie$Land <- as.character(Locatie$Land)

#### of
Locatie[,c(1,2)] <- sapply(Locatie[,c(1,2)], as.character)

### 2
Locatie[3,] <- c("Berlin", "Deutschland")
