library(dplyr)
library(tidyr)
## Lees data uit online csv-bestand
openDF <- read.csv(file = "https://raw.githubusercontent.com/witusj/R-workshop/gh-pages/Datasets/sessie%202/open_data.csv",
                   stringsAsFactors = TRUE)

## Bekijk eerste regels van data
head(openDF)

## Bekijk de structuur van data
glimpse(openDF)
str(openDF)

## Bekijk de kwaliteit van data
summary(openDF)

## Tel het aantal verschillende bomen naar latijns naam.
aantSoort <- count(openDF, latboomsoort, sort = TRUE)

## Splits de inspectiedatum
openDF <- separate(openDF, inspectiedatum, into = c("inspectiedag", "inspectiemaand", "inspectiejaar"),
                   sep="-", remove = FALSE, extra = "drop", fill = "right")
## Filter op jaar en maatregel
openDF2014 <- filter(openDF, inspectiejaar == "2014", kl_veilig_maatregelen == "Rooien;")
