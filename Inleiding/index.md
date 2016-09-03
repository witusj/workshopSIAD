# R-Workshop
Witek ten Hove - wfth1969@gmail.com  
`r format(Sys.time(), '%d %B, %Y')`  
<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyAfbzoFaFxwmdLDpzlwjku5kCcSgPLb33I" async="" defer="defer" type="text/javascript"></script>


# Inleiding

In deze workshop leer je op een slimme wijze kwantitatieve data verzamelen, deze om te zetten naar bruikbare input voor je analyse en uitkomsten te visualiseren en te rapporteren.

Tijdens de workshop werk je met [R](https://www.r-project.org/). Deze software is speciaal ontwikkeld om makkelijk en snel data in te lezen en te verwerken. Het is op dit moment naast Python de [belangrijkste tool voor data analyse](http://blog.revolutionanalytics.com/2016/06/r-holds-top-ranking-in-kdnuggets-software-poll.html) en wordt ingezet door ondernemingen als bijvoorbeeld Facebook, Airbnb en Microsoft om informatie uit hun enorme databestanden te genereren. Je bent dus in uitstekend gezelschap als je klaar bent met het leertraject.

Deze workshop is ontwikkeld voor mensen die nog geen of zeer beperkte ervaring hebben met programmeren. Wellicht heb je al een beetje ervaring met Excel of SPSS. Dit is handig, maar geen vereiste om deel te kunnen nemen. R is een programmeertaal, maar zeer eenvoudig qua opzet en je zult merken dat je al heel snel krachtige stukjes code (scripts) kunt schrijven. Je hoeft geen investeringen te doen, want R is volledig open source en werkt op zowel Mac OS, Windows als Linux.

## De instructeur

[Witek ten Hove](https://nl.linkedin.com/in/witektenhove) is hoofddocent aan de Hogeschool van Arnhem en Nijmegen en voorzitter van de R-User Group in Nijmegen. Na zijn studie aan de Universiteit van Maastricht heeft hij bij verschillende multinationals gewerkt als business analist, beurshandelaar en commodity trader. Zijn specialisaties zijn onder andere data science en online / blended learning.

## Workshop sessies
De workshop bestaat uit twee sessies:

* __Sessie 1__: Dinsdag 16 september 2016
* __Sessie 2__: Dinsdag 9 december 2016

Tijdens iedere sessie ga je werken aan een opdracht. Je krijgt een dataset (of een verwijzing naar een online databron) en gaat hier informatie uit halen. De instructeur helpt je als je vastloopt of geeft suggesties voor verbeteringen van je code.

## Voorbereiding
Om direct aan de gang te kunnen gaan tijdens de workshop sessies is het belangrijk dat je R op je computer installeert. Zie [hier](https://youtu.be/cX532N_XLIs?list=PLqzoL9-eJTNBDdKgJgJzaQcY6OXmsXAHU) voor instructies (Engels).

Dit is de Nederlandse [downloadsite](http://cran.xl-mirror.nl/) voor R (je kunt ook iedere andere downloadsite gebruiken).

Als je klaar bent met de installatie kun je in principe al aan de gang gaan met het pakket. R heeft namelijk een eigen interface, waarmee via een command line opdrachten kunnen worden ingevoerd.

Om echter wat comfortabeler te programmeren zijn er zogenaamde *integrated development environments (IDEs)* ontwikkeld. Wij gaan werken met die van [RStudio](http://cran.xl-mirror.nl/). Ook deze software is gratis te [downloaden](https://www.rstudio.com/products/rstudio/download2/).

LET OP: Het is belangrijk dat je eerst R en daarna RStudio installeert.

Als je alles hebt geinstalleerd, open RStudio, kopieer de volgende code:


```r
install.packages(c("gsheet", "rvest", "dplyr", "tidyr", "googleVis", "plotly", "leaflet", "knitr"))
```

plak het in de console en druk op *Enter*.

![](images/console.png)

<br>
Er worden nu een aantal sets van functies geinstalleerd die we tijdens de sessies gaan gebruiken.

## Basis R
In RStudio kun je op twee manieren code schrijven en laten uitvoeren:

* Direct via de console
* Indirect via een script

Meestal zul je eerst je code in een script schrijven (of kopiëren uit voorbeelden) en als je helemaal tevreden bent, uitvoeren. Het voordeel is tevens dat je een script kunt bewaren en later dus kunt hergebruiken.

Maak een nieuw R Script aan in RStudio via het icoontje met het 'groene plusje':

![<br>of _File >> New File >> R Script_](images/newfile.png)

Er wordt nu een venster met een veld voor tekstbewerking geopend. Je kunt hier je instructies invoeren, bijvoorbeeld een optelling.

![](images/editor.png)

<br>

Selecteer alles en klik op *Run*:

![<br>of _Ctrl + Enter_](images/run.png)

In de console zie je het resultaat.


```
## [1] 5
```

We hebben nu niet meer gedaan dan je ook op een gewone rekenmachine kunt uitvoeren. R is echter geen rekenmachine, maar een programmeertaal. In iedere programmeertaal kun je gegevens in variabelen opslaan en deze variabelen hergebruiken.

We kunnen bijvoorbeeld een variabele *a* en *b* aanmaken en daarin de waarden *2* en *3* bewaren. Het resultaat van de optelling bewaren we in een variabele *c*.


```r
a <- 2
b <- 3
c <- a + b
c
```

```
## [1] 5
```

Het voordeel hiervan is dat we nu *a* of *b* andere waarden kunnen geven en dat de waarde van *c* automatisch wordt aangepast.

```r
a <- 4
b <- 3
c <- a + b
c
```

```
## [1] 7
```


Om goed te kunnen begrijpen hoe R werkt, is het belangrijk bekend te raken met een aantal basiselementen, `classes`, `vectors` en `data frames`, en te begrijpen hoe deze elementen zich tot elkaar verhouden.

De belangrijkste datatypes (`classes`) binnen R zijn: *getallen*, *letters* en *factoren*. Een vector is een geordende verzameling van elementen van hetzelfde type data. 

Bijvoorbeeld de vector: `("Warszawa", "London", "Paris")` is een vector van plaatsen en de elementen zijn van `class` *letters* (`character`). De elementen uit de vector `("Man", "Man", "Vrouw", "Transgender")` kunnen van `class` *letters* zijn, maar waarschijnlijk is de functie van zo een vector een verzameling van *factoren* met 3 levels: `Transgender`, `Man` en `Vrouw`. Dit kunnen we specifiek aangeven in R.


```r
## Vectoren en classes
Plaats <- c("Warszawa", "London", "Paris")
class(Plaats)
```

```
## [1] "character"
```

```r
Geslacht <- c("Man", "Man", "Vrouw", "Transgender")
class(Geslacht)
```

```
## [1] "character"
```

```r
Geslacht <- as.factor(Geslacht)
class(Geslacht)
```

```
## [1] "factor"
```

```r
Geslacht
```

```
## [1] Man         Man         Vrouw       Transgender
## Levels: Man Transgender Vrouw
```

Ieder element binnen een vector heeft een indexnummer beginnend bij 1. Als we de vector `("Warszawa", "London", "Paris")` de naam `Plaats` geven, dan heeft het element `Plaats[2]` de waarde `"London"`.


```r
## Vectorindices
Plaats[2]
```

```
## [1] "London"
```

We kunnen met behulp van indexnummers elementen toevoegen of verwijderen.


```r
## Vectorelementen toevoegen of verwijderen.
Plaats[4] <- "Amsterdam"
Plaats
```

```
## [1] "Warszawa"  "London"    "Paris"     "Amsterdam"
```

```r
Plaats <- Plaats[-3]
Plaats
```

```
## [1] "Warszawa"  "London"    "Amsterdam"
```

Stel we creëren een tweede vector `Land` met de elementen `("Polska", "UK", "Nederland")`. We kunnen nu de vectoren `Plaats` en `Land` samenvoegen in een data frame en via de indexen *[rij,kolom]* de elementen opvragen.


```r
## Data frame structuur
Land <- c("Polska", "UK", "Nederland")
Locatie <- data.frame(Plaats, Land)
Locatie
```

```
##      Plaats      Land
## 1  Warszawa    Polska
## 2    London        UK
## 3 Amsterdam Nederland
```

```r
Locatie[3,1]
```

```
## [1] Amsterdam
## Levels: Amsterdam London Warszawa
```

```r
Locatie[3,]
```

```
##      Plaats      Land
## 3 Amsterdam Nederland
```

```r
Locatie[,2]
```

```
## [1] Polska    UK        Nederland
## Levels: Nederland Polska UK
```

We kunnen de afzonderlijke variabelen binnen een data frame ook oproepen via het `$` teken.


```r
## Data frame structuur
Locatie$Land
```

```
## [1] Polska    UK        Nederland
## Levels: Nederland Polska UK
```

```r
Locatie$Plaats[1]
```

```
## [1] Warszawa
## Levels: Amsterdam London Warszawa
```

### Vragenset Basis R
De antwoorden kun je eventueel [hier](https://goo.gl/forms/ZKIXUSOo4Zi9SxKl1) achterlaten en controleren.

1. Zoals je ziet hebben de variabelen `Plaats` en `Land` uit het voorbeeld door de omzetting naar een data frame de `class` `factor` gekregen. Hoe zet je de `class` van beide variabelen weer terug naar `character`?

2. Hoe vervang je de elementen uit de laatste rij door `("Berlin", "Deutschland")`?

3. Neem volgende code over in een script, voer het uit en analyseer wat er gebeurt.


```r
values1 <- c("20", "50")
sum(values1)

values2 <- c(20, 50)
sum(values2)
```

## Naslagwerken

Ondanks dat R open source is, wordt er veel controle uitgeoefend op de kwaliteit van het pakket. Dat betekent onder andere dat iedere bijdrage goede documentatie moet bevatten voordat het als onderdeel in het pakket wordt opgenomen. RStudio heeft een helpfuctie, waarmee makkelijk in de documentatie gezocht kan worden. Zie ook de *Cheatsheets* onder het helpmenu.

Er zijn online ontzettend veel gratis handleidingen voor R te vinden. Volgende documenten zijn een willekeurige selectie:

- [An Introduction to R](https://cran.r-project.org/doc/manuals/R-intro.pdf)

- [Introduction to R for Excel Users](https://dl.dropboxusercontent.com/u/12616850/R_Intro_for_Excel.pdf)

Al je een indruk wilt krijgen van wat je allemaal met R kunt, is de [R-bloggers](https://www.r-bloggers.com/) website een goed startpunt.