library(dplyr)
#Gemeente Alphen a/d Rijn
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

## Filter op jaar, maatregel en buurt
openDF2014Buurt <- filter(openDF, inspectiejaar == "2014", kl_veilig_maatregelen == "Rooien;", buurt == "Horstenbuurt")
summary(openDF2014Buurt)

## Verander class jaar, maand en datum naar numeric
openDF <- mutate(openDF,
                 inspectiedag = as.numeric(inspectiedag),
                 inspectiemaand = as.numeric(inspectiemaand),
                 inspectiejaar = as.numeric(inspectiejaar)
                 )
## Alle bomen die sinds 2010 zijn geinspecteerd.
openDF2010ev <- filter(openDF, inspectiejaar > 2009)

## Aantal inspecties per woonplaats per jaar
inspecTab <- table(openDF$woonplaats, openDF$inspectiejaar)
inspecTab
str(inspecTab)

## Conversie tabel naar data frame
inspecDF <- as.data.frame.matrix(inspecTab)
head(inspecDF)

## Bewaar rijnamen
plaatsenVec <- rownames(inspecDF)
cat(plaatsenVec, sep = ", ")

## Barplot van aantal inspecties per woonplaats per jaar
## Barplot van aantal inspecties per woonplaats per jaar
barplot(inspecTab,
        xlab = "Jaar",
        col=rainbow(9)
)

legend("topleft",
       legend = plaatsenVec,
       fill=rainbow(9)
)

maatrTab<- table(openDF$kl_veilig_maatregelen, openDF$inspectiejaar)
maatrDF <- as.data.frame.matrix(maatrTab)



# Subsidies Purmerend
## Lees data uit online csv-bestand
subsDF <- read.csv(file = "https://raw.githubusercontent.com/witusj/R-workshop/gh-pages/Datasets/sessie%202/subs_data.csv",
                   stringsAsFactors = TRUE)

glimpse(subsDF)
summary(subsDF)

## Aantal subsidies per jaar per soort
table(subsDF$Soort,subsDF$Jaar)

## Waarde subsidies per jaar per categorie
subsTable <- xtabs(Bedrag ~ Categorie + Jaar, subsDF)
subsTable

barplot(subsTable,
        xlab="Jaar",
        col=rainbow(5)
)

legend("topright",
       legend = dimnames(subsTable)$Categorie,
       fill=rainbow(5)
)

## Convert table into data frame
subsTabsDF <- as.data.frame(subsTable)
head(subsTabsDF)
subsTabsDF <- rename(subsTabsDF, Bedrag = Freq)

subsTabsDF2014 <- filter(subsTabsDF, Jaar == 2014)
pie(subsTabsDF2014$Bedrag, labels = subsTabsDF$Categorie)
