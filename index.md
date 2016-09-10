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
De workshop bestaat uit drie sessies:

* __Sessie 1__: Dinsdag 6 september 2016 van 18:30 tot 21:00u
* __Sessie 2__: Dinsdag 13 september 2016 van 18:30 tot 21:00u
* __Sessie 3__: Dinsdag 20 september 2016 van 18:30 tot 21:00u

Locatie: HAN, Kapittelweg 33, 6525 EN Nijmegen (Lokaal C106)

<!-- Map generated in R 3.3.0 by googleVis 0.5.10 package -->
<!-- Sat Sep 10 14:54:13 2016 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataMapID26fb1fc6111 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "HAN, Kapittelweg 33, 6525 EN Nijmegen",
"Lokaal C106<br><a href='https://goo.gl/maps/PA9xeFzKYNp'>Get directions</a>" 
] 
];
data.addColumn('string','adres');
data.addColumn('string','tooltip');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartMapID26fb1fc6111() {
var data = gvisDataMapID26fb1fc6111();
var options = {};
options["showTip"] = true;
options["mapType"] = "normal";
options["zoomLevel"] =     16;
options["width"] =    100;
options["height"] =    300;

    var chart = new google.visualization.Map(
    document.getElementById('MapID26fb1fc6111')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "map";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartMapID26fb1fc6111);
})();
function displayChartMapID26fb1fc6111() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMapID26fb1fc6111"></script>
 
<!-- divChart -->
  
<div id="MapID26fb1fc6111" 
  style="width: 100; height: 300;">
</div>
<br>
Tijdens iedere sessie ga je werken aan een opdracht. Je krijgt een dataset (of een verwijzing naar een online databron) en gaat hier informatie uit halen. De instructeur helpt je als je vastloopt of geeft suggesties voor verbeteringen van je code.

## Inschrijving
Aanmelding geschiedt via dit <a href="https://drive.google.com/open?id=1rP6KIbqikbLQJ9hJRQQJMWnbCTgfhA0yJLa84JGklVQ" target="_blank">formulier</a>. Er kunnen maximaal 16 personen deelnemen. Mocht er na de aanmelding iets veranderd zijn waardoor je niet meer kunt deelnemen, geef dit dan door aan de instructeur via witek.tenhove@han.nl.

Inschrijving vindt plaats naar volgorde van aanmelding. Nadat de aanmeldingstermijn is verstreken, zullen de deelnemers per mail worden geinformeerd.

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
Als we een nieuwe kolom met data willen toevoegen, kunnen we dit in één keer doen.


```r
## Kolom toevoegen
Locatie$Inwoners <- c(38.5, 64.1, 16.8)
head(Locatie)
```

```
##      Plaats      Land Inwoners
## 1  Warszawa    Polska     38.5
## 2    London        UK     64.1
## 3 Amsterdam Nederland     16.8
```

### Vragenset Basis R

1. Zoals je ziet hebben de variabelen `Plaats` en `Land` uit het voorbeeld door de omzetting naar een data frame de `class` `factor` gekregen. Hoe zet je de `class` van beide variabelen weer terug naar `character`?

2. Hoe vervang je de elementen uit de laatste rij door `("Berlin", "Deutschland", 80.6)`?

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

---

# Sessie 1 - Inlezen / Bekijken

In deze sessie gaan we kijken hoe je data uit verschillende bronnen kunt inlezen. We beginnen eenvoudig en lezen een lokaal opgeslagen bestand uit. Daarna gaan we data uitlezen vanuit een online spreadsheet. We eindigen met het scrapen van informatie uit een webpagina.

## Lokaal bestand

Maak een nieuw R Script aan in RStudio en bewaar het in een voor jou logische folder op je computer (geef het een zinvolle naam, bijvoorbeeld `werkSessie1.R`). Verwijs in RStudio naar deze werkfolder door te klikken op *Session >> Set Working Directory >> To Source File Location*

Download nu het volgende databestand: <a href="https://github.com/witusj/R-workshop/raw/gh-pages/datasets/sessie%201/stud_perf.csv" download>Student Performance (csv)</a> en sla het op in de werkfolder. Nu ben je klaar om je eerste data in te lezen in R.

In het scriptvenster in RStudio schrijf (of kopieer) je volgende instructie:

```r
## Lees data uit lokaal csv-bestand
studDF <- read.csv("stud_perf.csv", stringsAsFactors = FALSE)
```
Selecteer alles en klik op Run. In de console van RStudio zie je dat de instructies worden uitgevoerd, maar je ziet verder geen resultaten. R heeft echter alle data in het geheugen geladen. Je kunt dit zien in het *Environment* veld waar nu een data object *studDF* is toegevoegd:

![](images/env.png)

<br>
We kunnen snel controleren of de data goed is overgekomen door naar de eerste zes rijen te kijken:


```r
## Bekijk eerste regels van data
head(studDF)
```

```
##       Voor      Achter Kennistoetsen Schriftelijk Schriftelijk.Voldoende
## 1    ANTON   Entwistle           0.0          6.0                    100
## 2 CHRISTEN    Hardaway           4.6          2.2                      0
## 3    KYLEE      Mauzey           5.3          8.8                    100
## 4      KAI    Tredwell           5.0          4.8                      0
## 5     NELL      Darden           6.7          9.2                    100
## 6  KIRSTIE Tinklenberg           7.7          7.4                    100
##   Schriftelijk.Bonus Schriftelijk.Bonus.Voldoende Clicks Weblectures
## 1                6.0                          100    536         5.5
## 2                2.2                            0    636         0.8
## 3                8.8                          100    666         3.6
## 4                4.8                            0    479         1.2
## 5               10.0                          100    298         0.0
## 6                8.6                          100    863         0.0
##   BEC.Propedeuse AEC.Propedeuse Vooropleiding
## 1              1              1          HAVO
## 2              0              0           MBO
## 3              1              1           MBO
## 4              1              1          HAVO
## 5              1              1          HAVO
## 6              1              1           MBO
```

<br>
Het gaat hier klaarblijkelijk om een cijferlijst van studenten met wat metadata. Alles lijkt correct te zijn ingelezen door R en we kunnen nu wat nauwkeuriger kijken naar de data. Het is een goede gewoonte om eerst de structuur van de data te onderzoeken:


```r
## Bekijk de structuur van data
str(studDF)
```

```
## 'data.frame':	109 obs. of  12 variables:
##  $ Voor                        : chr  "ANTON" "CHRISTEN" "KYLEE" "KAI" ...
##  $ Achter                      : chr  "Entwistle" "Hardaway" "Mauzey" "Tredwell" ...
##  $ Kennistoetsen               : num  0 4.6 5.3 5 6.7 7.7 3.8 4.8 4.5 4.1 ...
##  $ Schriftelijk                : num  6 2.2 8.8 4.8 9.2 7.4 5 5.8 3.2 6.6 ...
##  $ Schriftelijk.Voldoende      : int  100 0 100 0 100 100 0 100 0 100 ...
##  $ Schriftelijk.Bonus          : num  6 2.2 8.8 4.8 10 8.6 5 5.8 3.2 6.6 ...
##  $ Schriftelijk.Bonus.Voldoende: int  100 0 100 0 100 100 0 100 0 100 ...
##  $ Clicks                      : int  536 636 666 479 298 863 434 428 441 1058 ...
##  $ Weblectures                 : num  5.5 0.8 3.6 1.2 0 0 0 0 0 1.2 ...
##  $ BEC.Propedeuse              : int  1 0 1 1 1 1 1 0 0 1 ...
##  $ AEC.Propedeuse              : int  1 0 1 1 1 1 1 1 0 1 ...
##  $ Vooropleiding               : chr  "HAVO" "MBO" "MBO" "HAVO" ...
```

<br>
en we zien dat de data de vorm van een *data frame* (tabel) heeft met 109 rijen (observaties) en 12 kolommen (variabelen). De eerste variabele heet `Voor` en de elementen bestaan uit letters (`chr`). De derde variabele heet `Kennistoetsen` en de elementen zijn getallen (`num`). De vijfde variabele heet `Schriftelijk.Voldoende` en bestaat uit gehele getallen (`int`).

Met `summary()` kunnen we de kwaliteit van de data beoordelen:


```r
## Bekijk de kwaliteit van data
summary(studDF)
```

```
##      Voor              Achter          Kennistoetsen   Schriftelijk  
##  Length:109         Length:109         Min.   :0.00   Min.   :0.800  
##  Class :character   Class :character   1st Qu.:3.20   1st Qu.:4.000  
##  Mode  :character   Mode  :character   Median :4.80   Median :5.600  
##                                        Mean   :4.48   Mean   :5.503  
##                                        3rd Qu.:5.70   3rd Qu.:6.800  
##                                        Max.   :8.30   Max.   :9.600  
##                                                                      
##  Schriftelijk.Voldoende Schriftelijk.Bonus Schriftelijk.Bonus.Voldoende
##  Min.   :  0.00         Min.   : 0.800     Min.   :  0.00              
##  1st Qu.:  0.00         1st Qu.: 4.000     1st Qu.:  0.00              
##  Median :100.00         Median : 5.600     Median :100.00              
##  Mean   : 52.29         Mean   : 5.787     Mean   : 53.21              
##  3rd Qu.:100.00         3rd Qu.: 7.600     3rd Qu.:100.00              
##  Max.   :100.00         Max.   :10.000     Max.   :100.00              
##                                                                        
##      Clicks        Weblectures     BEC.Propedeuse  AEC.Propedeuse  
##  Min.   :   1.0   Min.   :0.0000   Min.   :0.000   Min.   :0.0000  
##  1st Qu.: 269.0   1st Qu.:0.0000   1st Qu.:1.000   1st Qu.:1.0000  
##  Median : 386.0   Median :0.0000   Median :1.000   Median :1.0000  
##  Mean   : 445.7   Mean   :0.8505   Mean   :0.875   Mean   :0.9327  
##  3rd Qu.: 541.0   3rd Qu.:1.2000   3rd Qu.:1.000   3rd Qu.:1.0000  
##  Max.   :1058.0   Max.   :6.8000   Max.   :1.000   Max.   :1.0000  
##                                    NA's   :5       NA's   :5       
##  Vooropleiding     
##  Length:109        
##  Class :character  
##  Mode  :character  
##                    
##                    
##                    
## 
```
<br>
We kunnen hieruit onder andere aflezen dat de gemiddelde score van de kennistoetsen 4.48 bedroeg met een maximum van 8.3 en dat bij de variabele `BEC.Propedeuse` van 5 observaties de gegevens ontbreken (`NA`).

Door in het *Environment* veld op de variabele `StudDF` te klikken (of in de *Console* met het commando `View(studDF)`), krijg je een tabel met alle data.

![](images/view.png)

### Vragenset 1A
1. Hoeveel procent van de studenten heeft voor het schriftelijk tentamen (inclusief bonuspunten) een voldoende gehaald?

2. In hoeveel procent van de gevallen hadden studenten de bonuspunten nodig om voor het schriftelijk een voldoende te halen?

## Online bestand
We kunnen met R ook heel makkelijk data ophalen die online is opgeslagen. In dit voorbeeld lezen we data uit een Google Spreadsheet uit. Er zijn verschillende packages die voor deze taak geschikt zijn. Wij gaan de package `gsheet` gebruiken.


```r
## Laad de benodigde package(s)
library(gsheet)

## Lees online data in
url <- "https://docs.google.com/spreadsheets/d/1YnAdYzJ6hAHlFTbgv2xMxkMwGyAcFM8zM1FMnEkJKgw"
surveyDF <- gsheet2tbl(url)
```

### Vragenset 1B
1. Om wat voor een soort data gaat het hier?

2. Welke dimensies heeft de dataset (rijen / kolommen)?

3. Welke classes hebben de variabelen?

4. Wat is het gemiddelde niveau van de ingeschatte vaardigheden?


## Web scraping
Een andere wijze om online data te verzamelen is via *web scraping*. Soms zie je op webpagina's tabellen met data staan, zoals bijvoorbeeld [hier](http://www.pginvestor.com/Historic-Prices). Met de `rvest` package kunnen we de data uit de html code filteren.


```r
# Laad de benodigde package(s)
library(rvest)

# Lees ruwe html data in.
htmlpage <- read_html("http://www.pginvestor.com/Historic-Prices")

# Extraheer alle tabellen uit de ruwe data
nodes <- html_nodes(htmlpage, "table")
tables <- html_table(nodes, fill = TRUE)

# Kies een tabel en stop de data in een data frame
stockDF <- tables[1][[1]]
```

### Vragenset 1C
1. Wat voor een soort data bevat `stockDF`?

2. Welke classes hebben de variabelen?

3. Wat was de hoogste waarde voor de variabele`Price`?

---

# Sessie 2 - Muteren / Analyseren

In deze sessie gaan we de kwaliteit van de ruwe data bekijken en leren we hoe je met slimme tools data kunt aanpassen, zodat deze gebruikt kan worden voor verdere analyse of visualisatie.

## Muteren

Maak een nieuw R Script aan in RStudio en bewaar het in een voor jou logische folder op je computer (geef het een zinvolle naam, bijvoorbeeld `werkSessie2.R`). Verwijs in RStudio naar deze werkfolder door te klikken op *Session >> Set Working Directory >> To Source File Location*

We gaan met functies werken uit de `dplyr` package. Een uitgebreid overzicht van deze functies vind je [hier](https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html).


```r
library(dplyr)
library(tidyr)
```

Met de volgende code kun je een online csv bestand direct inlezen in R en met de `dplyr::glimpse()` functie de data bekijken. De oorspronkelijke data komt van de [Gemeente Alphen a/d Rijn](http://opendata.alphenaandenrijn.nl/).


```r
## Lees data uit online csv-bestand
openDF <- read.csv(file = "https://raw.githubusercontent.com/witusj/R-workshop/gh-pages/Datasets/sessie%202/open_data.csv", stringsAsFactors = TRUE)
glimpse(openDF)
```

```
## Observations: 45,669
## Variables: 15
## $ X                     (int) 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1...
## $ id                    (int) 2934, 1561, 1563, 1564, 1565, 1567, 1569...
## $ kl_imagcode           (fctr) PLACERIF, MEGLYPTO, MEGLYPTO, MEGLYPTO,...
## $ nedboomsoort          (fctr) Gewone plataan, Watercipres, Watercipre...
## $ latboomsoort          (fctr) Platanus x hispanica, Metasequoia glypt...
## $ aanlegjaar            (int) 1985, 1970, 1970, 1970, 1970, 1970, 1970...
## $ inspectiedatum        (fctr) 29-07-2014, 04-08-2014, 04-08-2014, 04-...
## $ kl_veilig_maatregelen (fctr) Geen veiligheidsmaatregel;, Geen veilig...
## $ structuurelement      (fctr) Woongebied, Woongebied, Woongebied, Woo...
## $ woonplaats            (fctr) Boskoop, Boskoop, Boskoop, Boskoop, Bos...
## $ wijk                  (fctr) Boskoop, Boskoop, Boskoop, Boskoop, Bos...
## $ buurt                 (fctr) Snijdelwijk, Boskoop, Boskoop, Boskoop,...
## $ openbare_ruimte       (fctr) Bosweg, A.p. van neslaan, A.p. van nesl...
## $ x                     (fctr) 104066,236, 105447,454, 105455,527, 105...
## $ y                     (fctr) 453323,99, 454397,319, 454442,028, 4544...
```
### Vragenset 2A
1. Wat voor een soort data bevat `openDF`?

2. Wat is de latijnse naam voor 'Moeraseik'?

3. Wat is het vroegste aanlegjaar in de dataset?

4. Van hoeveel boomsoorten binnen de Gemeente Alphen aan de Rijn is de latijnse naam vastgesteld? (HINT: gebruik de functie `levels()` en kijk goed bij de namen die met een 'N' beginnen)

Het kan wellicht handig zijn om de inspectiedatum op te splitsen in *dag*, *maand* en *jaar*.

```r
## Splits de inspectiedatum
openDF <- separate(openDF, inspectiedatum, into = c("inspectiedag", "inspectiemaand", "inspectiejaar"), sep="-", remove = FALSE, extra = "drop", fill = "right")
```

Nu kunnen we makkelijk de inspecties van een bepaalde periode uit de data filteren (let op het dubbele `=` teken) en kijken welke bomen zijn aangemerkt om gerooid te worden.

```r
## Filter op jaar en maand
openDF2014 <- filter(openDF, inspectiejaar == "2014", kl_veilig_maatregelen == "Rooien;")
head(openDF2014)
```

```
##     X   id kl_imagcode       nedboomsoort      latboomsoort aanlegjaar
## 1  63 2857      SAALBA         Schietwilg        Salix alba       1990
## 2 356 2880      SAALBA         Schietwilg        Salix alba       2000
## 3 451 3349      SAALBA         Schietwilg        Salix alba       1970
## 4 455 1952    BEPENDUL          Ruwe berk    Betula pendula       1980
## 5 749 3445    TICORDAT Kleinbladige linde     Tilia cordata       1985
## 6 847 1840    LISTYRAC          Sassafras Sassafras albidum       2012
##   inspectiedatum inspectiedag inspectiemaand inspectiejaar
## 1     30-07-2014           30             07          2014
## 2     31-07-2014           31             07          2014
## 3     06-08-2014           06             08          2014
## 4     07-08-2014           07             08          2014
## 5     05-08-2014           05             08          2014
## 6     08-08-2014           08             08          2014
##   kl_veilig_maatregelen structuurelement woonplaats    wijk       buurt
## 1               Rooien;       Woongebied    Boskoop Boskoop Snijdelwijk
## 2               Rooien;                     Boskoop Boskoop Snijdelwijk
## 3               Rooien;       Woongebied    Boskoop Boskoop     Boskoop
## 4               Rooien;       Woongebied    Boskoop Boskoop Snijdelwijk
## 5               Rooien;       Woongebied    Boskoop Boskoop     Boskoop
## 6               Rooien;       Woongebied    Boskoop Boskoop Snijdelwijk
##   openbare_ruimte          x          y
## 1      Lage weide 103890,645 453625,156
## 2        Emmakade   104931,9 453665,223
## 3     Weteringpad 103938,935 454361,435
## 4      Klaverblad 103958,989 453882,047
## 5      Reyerskoop 105583,114 454224,553
## 6       Wilgehout 103800,245 453831,052
```
### Vragenset 2B
1. Maak een subset van de data waarin alleen de bomen staan die in 2014 in de Horstenbuurt aangemerkt werden om gerooid te worden.

2. Van welke boomsoort zullen de meeste bomen worden gerooid in deze buurt?

3. Maak een subset van alle bomen die **sinds** 2010 geinspecteerd zijn.

## Analyseren
We gaan data aggregeren om een beter beeld te krijgen van het inspectieproces bij de Gemeente Alphen a/d Rijn. Met de `table()` functie kunnen we een matrix bouwen. Horizontaal (*rij*) plaatsen we de afzonderlijke *woonplaatsen* en verticaal (*kolom*) de *inspectiejaren*. In de cellen van de matrix staat het aantal keren dat de gegeven combinatie (*woonplaats*, *jaar*) in de dataset voorkomt.


```r
## Aantal inspecties per woonplaats per jaar
inspecTab <- table(openDF$woonplaats, openDF$inspectiejaar)
inspecTab
```

```
##                         
##                           2003  2005  2006  2007  2008  2009  2010  2011
##                              0     0     0     0     0     0     0     0
##   Aarlanderveen              0     0     0    56     2   207     2     0
##   Alphen aan den Rijn        0  2253  1643  1043   243   980   374  4510
##   Benthuizen                 0     0     0     0     0     0     8     0
##   Boskoop                    0     0     0     0     0   132     0     0
##   Hazerswoude-Dorp           0     0     0     0     0     4   288     0
##   Hazerswoude-Rijndijk       0     0     1     0     0     0    14     0
##   Koudekerk aan den Rijn     0     0     0     0     0     0     0     0
##   Zwammerdam                50    30     0     1     0   142     4     0
##                         
##                           2012  2013  2014  2015
##                              0     0     0     1
##   Aarlanderveen            767     4    11     0
##   Alphen aan den Rijn    11983  1510  6457     0
##   Benthuizen                 0     0  1617     0
##   Boskoop                    0     0  5235     0
##   Hazerswoude-Dorp           0     0  1691     0
##   Hazerswoude-Rijndijk       0     0  1907     0
##   Koudekerk aan den Rijn     0     0  1444     0
##   Zwammerdam               589    27    90     0
```

```r
str(inspecTab)
```

```
##  'table' int [1:9, 1:12] 0 0 0 0 0 0 0 0 50 0 ...
##  - attr(*, "dimnames")=List of 2
##   ..$ : chr [1:9] "" "Aarlanderveen" "Alphen aan den Rijn" "Benthuizen" ...
##   ..$ : chr [1:12] "2003" "2005" "2006" "2007" ...
```

Als we de structuur van `inspecTab` bekijken zien we dat het class `table` heeft en bestaat uit de waarden (`int`) en namen van de *rijen* en *kolommen* (`attr`). Om dit om te zetten naar een data frame kunnen we de functie `as.data.frame.matrix()` gebruiken. Wat we zo direct nodig hebben, zijn de de *namen* van de afzonderlijke *rijen*. Deze kunnen we via de functie `rownames()` opslaan in een vector.


```r
## Conversie tabel naar data frame
inspecDF <- as.data.frame.matrix(inspecTab)
head(inspecDF)
```

```
##                     2003 2005 2006 2007 2008 2009 2010 2011  2012 2013
##                        0    0    0    0    0    0    0    0     0    0
## Aarlanderveen          0    0    0   56    2  207    2    0   767    4
## Alphen aan den Rijn    0 2253 1643 1043  243  980  374 4510 11983 1510
## Benthuizen             0    0    0    0    0    0    8    0     0    0
## Boskoop                0    0    0    0    0  132    0    0     0    0
## Hazerswoude-Dorp       0    0    0    0    0    4  288    0     0    0
##                     2014 2015
##                        0    1
## Aarlanderveen         11    0
## Alphen aan den Rijn 6457    0
## Benthuizen          1617    0
## Boskoop             5235    0
## Hazerswoude-Dorp    1691    0
```

```r
## Bewaar rijnamen
plaatsenVec <- rownames(inspecDF)
cat(plaatsenVec, sep = ", ")
```

```
## , Aarlanderveen, Alphen aan den Rijn, Benthuizen, Boskoop, Hazerswoude-Dorp, Hazerswoude-Rijndijk, Koudekerk aan den Rijn, Zwammerdam
```

We kunnen nu de data in een staafdiagram weergeven m.b.v. de functie `barplot()`. De functie barplot accepteert als input alleen een matrix of een vector. Daarom gebruiken we de tabel in plaats van de data frame.


```r
## Barplot van aantal inspecties per woonplaats per jaar
barplot(inspecTab,
        xlab = "Jaar",
        col=rainbow(9)
        )

legend("topleft",
       legend = plaatsenVec,
       fill=rainbow(9)
)
```

![](index_files/figure-html/unnamed-chunk-24-1.png)<!-- -->

### Vragenset 2C
1. Wat valt op als je de `inspecTab` dataset bekijkt?

2. Maak een tabel waarin je het aantal afzonderlijke categorieën veiligheidsmaatregelen per jaar telt.

3. Voor hoeveel bomen werd in 2014 een jaarlijkse inspectie geadviseerd?

4. Analyseer deze [data](https://raw.githubusercontent.com/witusj/R-workshop/gh-pages/Datasets/sessie%202/subs_data.csv)

---

# Sessie 3 - Visualiseren / Presenteren

In deze sessie kijken we hoe je data aantrekkelijk kunt visualiseren en op een makkelijke manier toegankelijk maakt voor de gebruikers.

## Visualiseren
Er zijn talrijke packages voor R gebouwd waarmee je data op veelzijdige manieren grafisch kunt weergeven. In deze workshop gaan we werken met de R interface voor de Google Charts API (`googleVis`). Op deze  [pagina](https://cran.r-project.org/web/packages/googleVis/vignettes/googleVis_examples.html) vind je voorbeelden van de mogelijkheden die de interface biedt.


```r
## Laad de benodigde packages
library(googleVis)
library(gsheet)
library(dplyr)
```

De data die we gebruiken, komt uit een Google Spreadsheet.

```r
## Lees data uit Google Spreadsheet
url <- 'https://docs.google.com/spreadsheets/d/1f0qX_BBu-4qhKHa6mBiwbUHmUahrXcHeWieBDD9fiXg'
surveyDF <- gsheet2tbl(url)
```

Met de functie `gvisBubbleChart()` wordt alle code gegegenereerd die nodig is om de grafiek in een html pagina weer te geven. Met de `plot()` functie wordt de grafiek in een webbrowser getoond.


```r
## Bouw Google Bubble Chart
survChart <- gvisBubbleChart(surveyDF,
                             idvar = "Naam",
                             xvar = "Waarschijnlijkheid",
                             yvar = "Gevolg",
                             colorvar = "Soort.Risico",
                             options = list(hAxis = '{minValue:1, maxValue:5, title:"Gevolg"}'
                                            ,vAxis = '{minValue:1, maxValue:5, title:"Waarschijnlijkheid"}',
                                            width = 700,
                                            height = 700
                                            )
                             )
plot(survChart)
```

<!-- BubbleChart generated in R 3.3.0 by googleVis 0.5.10 package -->
<!-- Sat Sep 10 14:54:14 2016 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataBubbleChartID26fb3ffb7264 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "ELIN",
2,
4,
"Kans" 
],
[
 "NIKIA",
4,
5,
"Kans" 
],
[
 "MARIO",
3,
5,
"Kans" 
],
[
 "ROMAINE",
3,
3,
"Kans" 
],
[
 "ALLYSON",
4,
2,
"Kans" 
],
[
 "VADA",
2,
4,
"Kans" 
],
[
 "MYRLE",
1,
4,
"Kans" 
],
[
 "VERTIE",
3,
3,
"Kans" 
],
[
 "DAISY",
3,
3,
"Kans" 
],
[
 "KATHERINE",
4,
4,
"Kans" 
],
[
 "SID",
4,
3,
"Kans" 
],
[
 "LERA",
4,
4,
"Kans" 
],
[
 "MARLYS",
3,
4,
"Kans" 
],
[
 "ANTON",
5,
3,
"Bedreiging" 
],
[
 "CHRISTEN",
3,
4,
"Bedreiging" 
],
[
 "KYLEE",
4,
4,
"Bedreiging" 
],
[
 "KAI",
2,
4,
"Bedreiging" 
],
[
 "NELL",
3,
4,
"Bedreiging" 
],
[
 "KIRSTIE",
4,
4,
"Bedreiging" 
],
[
 "THERESIA",
4,
4,
"Bedreiging" 
],
[
 "MOSES",
3,
5,
"Bedreiging" 
],
[
 "BRYANT",
4,
4,
"Bedreiging" 
],
[
 "LEZLIE",
4,
4,
"Bedreiging" 
],
[
 "SANDI",
4,
4,
"Bedreiging" 
],
[
 "ARNETTA",
4,
4,
"Bedreiging" 
],
[
 "LAVINA",
2,
4,
"Bedreiging" 
],
[
 "IGNACIA",
4,
4,
"Bedreiging" 
],
[
 "ARLETHA",
4,
3,
"Bedreiging" 
],
[
 "WILTON",
4,
4,
"Bedreiging" 
],
[
 "ALTHA",
4,
4,
"Bedreiging" 
],
[
 "GEORGIANN",
5,
5,
"Bedreiging" 
],
[
 "EMMETT",
2,
5,
"Bedreiging" 
],
[
 "MAMIE",
4,
4,
"Bedreiging" 
],
[
 "ROXANA",
4,
4,
"Bedreiging" 
],
[
 "JERRY",
4,
4,
"Bedreiging" 
],
[
 "MARINE",
2,
5,
"Bedreiging" 
],
[
 "HONG",
3,
4,
"Bedreiging" 
],
[
 "RHETT",
2,
2,
"Bedreiging" 
],
[
 "DEDRA",
5,
4,
"Bedreiging" 
],
[
 "MALIK",
5,
4,
"Bedreiging" 
],
[
 "KELSEY",
3,
4,
"Bedreiging" 
],
[
 "SHANDI",
3,
4,
"Bedreiging" 
],
[
 "HERMINA",
4,
4,
"Bedreiging" 
],
[
 "CATHARINE",
3,
4,
"Bedreiging" 
],
[
 "SHERRIL",
2,
5,
"Bedreiging" 
],
[
 "SHAWANA",
4,
4,
"Bedreiging" 
],
[
 "ALICA",
3,
3,
"Bedreiging" 
],
[
 "SHAREN",
4,
3,
"Bedreiging" 
],
[
 "CAROLEE",
4,
3,
"Bedreiging" 
],
[
 "YASUKO",
4,
3,
"Bedreiging" 
],
[
 "FUMIKO",
4,
4,
"Bedreiging" 
],
[
 "SHON",
5,
5,
"Bedreiging" 
],
[
 "MONNIE",
4,
5,
"Bedreiging" 
],
[
 "BETTYE",
5,
5,
"Bedreiging" 
],
[
 "SUE",
4,
4,
"Bedreiging" 
],
[
 "JARED",
2,
2,
"Bedreiging" 
],
[
 "LAURI",
5,
4,
"Bedreiging" 
],
[
 "FAWN",
4,
3,
"Bedreiging" 
] 
];
data.addColumn('string','Naam');
data.addColumn('number','Waarschijnlijkheid');
data.addColumn('number','Gevolg');
data.addColumn('string','Soort.Risico');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBubbleChartID26fb3ffb7264() {
var data = gvisDataBubbleChartID26fb3ffb7264();
var options = {};
options["hAxis"] = {minValue:1, maxValue:5, title:"Gevolg"};
options["vAxis"] = {minValue:1, maxValue:5, title:"Waarschijnlijkheid"};
options["width"] =    700;
options["height"] =    700;

    var chart = new google.visualization.BubbleChart(
    document.getElementById('BubbleChartID26fb3ffb7264')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartBubbleChartID26fb3ffb7264);
})();
function displayChartBubbleChartID26fb3ffb7264() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBubbleChartID26fb3ffb7264"></script>
 
<!-- divChart -->
  
<div id="BubbleChartID26fb3ffb7264" 
  style="width: 700; height: 700;">
</div>

### Vragenset 3A
1. Wat voor een structuur heeft `survDF`?

2. Om wat voor een soort data gaat het?

3. Maak een nieuwe bubble chart met de variabelen die op ".1" eindigen.

4. Wat valt je op als je de twee bubble charts met elkaar vergelijkt?

Zoals je wellicht al is opgevallen, bevat `survDF` 7 sets van variabelen die een gelijke opzet hebben. Het gaat hier om een survey, waarbij deelnemers moesten reageren op stellingen. In de vorige exercitie hebben we de afzonderlijke reacties grafisch weergegeven. We gaan nu kijken naar de centrum- en spreidingsmaten. Voor het gemak zijn deze waarden al berekend en in dit [bestand](https://raw.githubusercontent.com/witusj/R-workshop/gh-pages/Datasets/sessie%203/mean_var.csv) bewaard.

We gebruiken nu de package `plotly`. Voor het gebruik en voorbeelden zie [hier](https://plot.ly/r/).




```r
## Laad packages
library(plotly)

## Bouw Plotly Chart
p <- plot_ly(
  meanvarDF,
  x = Waarschijnlijkheid,
  y = Gevolgen,
  color = Perc.Kans,
  size = Spreiding,
  text = Topic,
  mode = "text+markers",
  cmin = 0,
  cmax = 1,
  colors = c("red", "orange", "white", "light blue" , "dodgerblue")
)
p
```

<!--html_preserve--><div id="htmlwidget-2438" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-2438">{"x":{"data":[{"type":"scatter","inherit":false,"x":[3.5,4.5,3.6,3.4,3.3,3.1,3.5],"y":[3.9,4.1,3.7,3.7,3.5,3.8,3.6],"text":["W&R<br>Spreiding (size): 1.331","ICT<br>Spreiding (size): 0.729","HR<br>Spreiding (size): 1","Toetreders<br>Spreiding (size): 2.197","Rente<br>Spreiding (size): 2.197","Verdienmodel<br>Spreiding (size): 1.728","Vermogenverschaffers<br>Spreiding (size): 1.728"],"mode":"text+markers","cmin":0,"cmax":1,"size":[1.331,0.729,1,2.197,2.197,1.728,1.728],"marker":{"colorbar":{"title":"Perc.Kans"},"colorscale":[[0,"#FF0000"],[0.111111111111111,"#FF6700"],[0.222222222222222,"#FF9A00"],[0.333333333333333,"#FFC26C"],[0.444444444444444,"#FFEACE"],[0.555555555555556,"#EDF6F9"],[0.666666666666667,"#C9E5EE"],[0.777777777777778,"#A3D0E9"],[0.888888888888889,"#76AFF5"],[1,"#1E90FF"]],"color":[22,74,69,21,55,69,22],"size":[6587.90100824931,3608.24931255729,4949.58753437214,10874.2438130156,10874.2438130156,8552.88725939505,8552.88725939505],"sizemode":"area"}}],"layout":{"xaxis":{"title":"Waarschijnlijkheid"},"yaxis":{"title":"Gevolgen"},"hovermode":"closest","margin":{"b":40,"l":60,"t":25,"r":10}},"url":null,"width":null,"height":null,"source":"A","config":{"modeBarButtonsToRemove":["sendDataToCloud"]},"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

### Vragenset 3B
1. Wat voor een structuur heeft `meanvarDF`?

2. Analyseer de chart en beschrijf wat je opvalt.

3. Verander de chart, zodat in plaats van het thema het percentage van deelnemers wordt getoond dat aangaf het thema als een kans te zien.

In de volgende oefening gaan we data in een geografische kaart plaatsen. De data is via een mobiele telefoon verzameld en kan [hier](https://raw.githubusercontent.com/witusj/R-workshop/gh-pages/Datasets/sessie%203/mean_var.csv) opgehaald worden. We gebruiken de [Leaflet](https://rstudio.github.io/leaflet/) package.




```r
## Laad packages
library(leaflet)

## Bepaal middelpunt van de kaart
latCtr <- mean(gpsDF$lat)
lonCtr <- mean(gpsDF$lon)

## Bouw de kaart en geef weer
m1 <- leaflet() %>%
  addTiles() %>%
  setView(lonCtr, latCtr, 12) %>% # map location
  # add som circles:
  addCircles(color = "Red", lng=gpsDF$lon, lat=gpsDF$lat, 20)
m1
```

<!--html_preserve--><div id="htmlwidget-2877" style="width:672px;height:480px;" class="leaflet html-widget"></div>
<script type="application/json" data-for="htmlwidget-2877">{"x":{"calls":[{"method":"addTiles","args":["http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"maxNativeZoom":null,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"continuousWorld":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":null,"unloadInvisibleTiles":null,"updateWhenIdle":null,"detectRetina":false,"reuseTiles":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap\u003c/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA\u003c/a>"}]},{"method":"addCircles","args":[[51.807476,51.807415,51.807922,51.807765,51.807595,51.807645,51.807629,51.807428,51.807335,51.807373,51.807743,51.807568,51.807576,51.807366,51.807448,51.80754,51.80753,51.80748,51.807457,51.807568,51.807705,51.807814,51.807887,51.807991,51.808045,51.808008,51.808026,51.808244,51.808537,51.80857,51.808687,51.808828,51.808988,51.809182,51.809284,51.809389,51.809505,51.809623,51.809742,51.80984,51.809975,51.810138,51.810335,51.810537,51.810737,51.810834,51.81114,51.811269,51.811283,51.811383,51.811826,51.811691,51.811679,51.811611,51.81145,51.811408,51.81157,51.811753,51.811486,51.811658,51.811522,51.811612,51.811438,51.811505,51.81151,51.812348,51.816041,51.816592,51.817033,51.817722,51.818807,51.81964,51.820004,51.819978,51.819613,51.819611,51.819419,51.818771,51.818915,51.819104,51.819671,51.820974,51.82085,51.820617,51.820323,51.820153,51.820018,51.821935,51.822678,51.823121,51.825301,51.826055,51.826492,51.82648,51.826665,51.826935,51.829054,51.831184,51.832304,51.833222,51.835634,51.836639,51.837738,51.839363,51.840205,51.84309,51.843983,51.84397,51.844085,51.843984,51.844039,51.843493,51.843357,51.843356,51.843472,51.843744,51.843683,51.843683,51.843732,51.843422,51.84272,51.841552,51.840432,51.839583,51.838634,51.838212,51.837423,51.837245,51.836568,51.83528,51.833769,51.833193,51.833175,51.832327,51.831628,51.831628,51.831544,51.831259,51.831197,51.831104,51.830789,51.828826,51.827329,51.826252,51.825672,51.825637,51.825637,51.824371,51.822433,51.821267,51.819683,51.819044,51.818217,51.817114,51.816959,51.816959,51.816683,51.815975,51.816013,51.816078,51.814954,51.813769,51.8122,51.811724,51.811525,51.811094,51.810686,51.808965,51.80881,51.807831,51.807357,51.806267,51.806555,51.806623,51.806688,51.806828,51.806954,51.807082,51.807257,51.807365,51.807485,51.807664,51.807857,51.807956,51.808125,51.80824,51.807811,51.807837,51.807813,51.807655,51.807536,51.807391,51.80723,51.807322,51.807497,51.807635,51.80776,51.807308,51.807445,51.807855,51.807498,51.807344,51.80772,51.807631,51.807541,51.807561,51.807568,51.80761,51.807548,51.807622,51.80768,51.80768,51.807704,51.807518,51.807466,51.807851,51.809066,51.808969,51.808979,51.809067,51.809191,51.80934,51.809493,51.809607,51.809812,51.809945,51.809868,51.809969,51.810197,51.810348,51.81049,51.810635,51.810825,51.810913,51.811176,51.811382,51.811489,51.81152,51.811736,51.811819,51.811954,51.812177,51.812298,51.812618,51.81264,51.812733,51.81287,51.813017,51.813169,51.813296,51.81346,51.8136,51.813746,51.813913,51.813889,51.814153,51.814187,51.814284,51.814289,51.814336,51.81445,51.814542,51.814772,51.814903,51.815017,51.815201,51.815415,51.815651,51.815777,51.815878,51.815967,51.816095,51.81619,51.81628,51.8164,51.816566,51.816354,51.816575,51.816731,51.816958,51.817068,51.817242,51.817334,51.817418,51.817532,51.817671,51.817802,51.817967,51.818114,51.818206,51.818287,51.818392,51.818511,51.818652,51.81888,51.819065,51.819278,51.819513,51.819641,51.819785,51.819873,51.820207,51.820272,51.820367,51.820522,51.820677,51.82087,51.821126,51.821279,51.821497,51.821582,51.821747,51.821855,51.822101,51.822033,51.822267,51.822504,51.822874,51.823033,51.823079,51.823291,51.82357,51.823707,51.823932,51.824105,51.824285,51.824551,51.824769,51.824847,51.825073,51.825179,51.82533,51.825515,51.825683,51.825891,51.826079,51.826188,51.826353,51.826384,51.826159,51.825967,51.825668,51.82557,51.82505,51.824883,51.824659,51.824469,51.824236,51.823984,51.823844,51.823652,51.823398,51.823317,51.823266,51.82319,51.823064,51.822929,51.822718,51.822477,51.822404,51.822297,51.822174,51.821905,51.821744,51.821599,51.821429,51.821252,51.821008,51.820892,51.8207,51.820466,51.820255,51.820116,51.819859,51.819926,51.819661,51.819647,51.81948,51.819233,51.818969,51.818661,51.818583,51.818229,51.81802,51.817836,51.817557,51.817225,51.817295,51.817333,51.817194,51.816911,51.816653,51.816086,51.816246,51.816174,51.816069,51.815967,51.815859,51.815672,51.815519,51.815152,51.815151,51.81509,51.814999],[5.832761,5.832766,5.832979,5.833076,5.833179,5.832906,5.833204,5.832889,5.833496,5.833345,5.833081,5.833017,5.833,5.833184,5.832694,5.833509,5.833195,5.83324,5.833266,5.833169,5.833131,5.83326,5.833331,5.833539,5.833778,5.833509,5.833826,5.833978,5.834098,5.83412,5.833963,5.83369,5.833474,5.833229,5.833056,5.8329,5.832734,5.832574,5.832383,5.832235,5.832072,5.831837,5.831585,5.83139,5.831245,5.831043,5.831153,5.831406,5.831488,5.831623,5.831646,5.832058,5.831843,5.831842,5.831843,5.831814,5.831972,5.832137,5.831829,5.831911,5.831855,5.831783,5.831646,5.831776,5.831753,5.833456,5.839851,5.840746,5.841404,5.842473,5.843868,5.845054,5.845661,5.845789,5.849817,5.850092,5.852226,5.854404,5.854824,5.855296,5.855981,5.856274,5.857465,5.860376,5.863735,5.865464,5.866543,5.867006,5.867234,5.867305,5.867574,5.868531,5.869022,5.869033,5.868959,5.868572,5.864522,5.861241,5.859563,5.858141,5.854389,5.85269,5.851864,5.85185,5.852443,5.853696,5.854374,5.854127,5.853675,5.853493,5.854013,5.854139,5.854296,5.855394,5.855431,5.853924,5.853895,5.853895,5.853879,5.853882,5.853711,5.852957,5.852112,5.85187,5.85061,5.849947,5.849791,5.84968,5.849442,5.849223,5.848832,5.848643,5.847517,5.846691,5.846804,5.844532,5.844244,5.840957,5.838764,5.837382,5.835501,5.83222,5.830228,5.828178,5.827156,5.827099,5.827099,5.826588,5.827559,5.82768,5.828218,5.82999,5.829825,5.829524,5.829436,5.829436,5.829392,5.828938,5.828296,5.827835,5.827245,5.827636,5.829222,5.830278,5.830416,5.830843,5.829924,5.828403,5.828527,5.82983,5.830427,5.831329,5.831673,5.831739,5.831652,5.831436,5.831213,5.831056,5.830833,5.83071,5.830505,5.830313,5.830095,5.830134,5.830259,5.830334,5.83176,5.831847,5.832076,5.832217,5.832332,5.832524,5.832687,5.832931,5.832975,5.833085,5.83319,5.833392,5.833123,5.832908,5.832875,5.832932,5.832984,5.832967,5.832962,5.832957,5.832928,5.833029,5.832983,5.832953,5.832822,5.832822,5.833171,5.832956,5.832969,5.833307,5.833769,5.833684,5.83374,5.833836,5.833978,5.834094,5.834329,5.834409,5.834463,5.834429,5.834481,5.834486,5.834581,5.834599,5.834723,5.834753,5.834896,5.834973,5.835081,5.835209,5.83524,5.835313,5.835238,5.835367,5.83542,5.835491,5.835546,5.835695,5.835735,5.83566,5.835684,5.835509,5.835521,5.835669,5.835666,5.835839,5.836093,5.836237,5.836461,5.836539,5.83674,5.836915,5.837059,5.83733,5.837524,5.837698,5.83802,5.838216,5.838455,5.838728,5.839006,5.839346,5.839589,5.83976,5.839919,5.840095,5.840224,5.840311,5.840502,5.840702,5.841007,5.840968,5.84036,5.840332,5.840198,5.839936,5.839766,5.839601,5.839541,5.839364,5.839215,5.839154,5.838948,5.838842,5.838768,5.838733,5.83872,5.838639,5.838488,5.838324,5.838288,5.838156,5.838091,5.838002,5.837892,5.837788,5.837665,5.837584,5.837507,5.837492,5.837369,5.83724,5.837051,5.836863,5.836684,5.836376,5.836013,5.836348,5.835529,5.835446,5.835518,5.835656,5.835621,5.83581,5.835787,5.835685,5.835671,5.835648,5.835693,5.835629,5.835517,5.835662,5.835715,5.836019,5.836133,5.836269,5.836609,5.836892,5.83729,5.837312,5.837483,5.837671,5.837841,5.838198,5.838376,5.838457,5.838589,5.839028,5.839275,5.839487,5.83944,5.839419,5.839335,5.839241,5.839131,5.839133,5.839152,5.838945,5.839089,5.839066,5.839002,5.83913,5.838848,5.838906,5.838876,5.838857,5.838857,5.838678,5.83853,5.838471,5.838469,5.838393,5.838467,5.838577,5.838526,5.838419,5.838321,5.838433,5.838104,5.838262,5.838422,5.838414,5.838518,5.838669,5.83874,5.838804,5.83897,5.839096,5.839703,5.839717,5.839938,5.839846,5.839727,5.840237,5.840671,5.840744,5.840729,5.840489,5.840234,5.840079,5.839895,5.839746,5.839505,5.839206,5.838972,5.838817,5.838616,5.838368],20,null,null,{"lineCap":null,"lineJoin":null,"clickable":true,"pointerEvents":null,"className":"","stroke":true,"color":"Red","weight":5,"opacity":0.5,"fill":true,"fillColor":"Red","fillOpacity":0.2,"dashArray":null},null]}],"setView":[[51.8178944405941,5.83852257673267],12,[]],"limits":{"lat":[51.806267,51.844085],"lng":[5.826588,5.869033]}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

### Vragenset 3C
1. Welke data is door de mobiele telefoon verzameld en op welke momenten?

2. Waarom zijn sommige punten verder van elkaar verwijderd dan andere?

3. Gebruik deze [data](https://raw.githubusercontent.com/witusj/R-workshop/gh-pages/Datasets/sessie%203/event_data.csv) om een nieuwe geografische kaart te bouwen en analyseer de informatie.

## Presenteren.
Natuurlijk wil je uiteindelijk de uitkomsten van je werk met anderen delen. In R kun je heel gemakkelijk rapportages in verschillende formats (HTML, pdf of Word) creëren, waarin je tekst, code, tabellen en grafieken integreerd. Hiervoor open je een RMarkdown script.

![](images/rmarkd.png)

<br>
Geef je document een titel en kies wat voor een soort document je wilt maken. In dit voorbeeld gaan we een webpagina bouwen en kiezen dus voor HTML.

R bouwt alvast een template met wat voorbeelden, zodat je direct aan de slag kunt. Als je wilt testen hoe het document er uit gaat zien, klik je op *Knit HTML*.

![](images/knit.png)

<br>
In het bovenste gedeelte van het het *RMarkdown script* zie je een zogenaamd YAML veld waarin meta data staat. Je kunt deze veranderen en extra variabelen toevoegen (bijvoorbeeld een inhoudsopgave). Online is veel informatie te vinden over het gebruik van YAML en (R) Markdown. Voor RMarkdown vind je onder het helpmenu van RStudio ook een *Cheatsheet* en een handleiding.

<pre>---
title: "Rapportage Q1 2016"
author: "Nomen Nescio"
date: "17-08-1016"
output:
 html_document:
   toc: yes
---
Deze rapportage gaat over de subsidie-uitkeringen van de Gemeente Purmerend.
</pre>
<pre>```{r, message=FALSE, warning=FALSE}

library(knitr)
library(dplyr)

subsDF <- read.csv(file = "https://raw.githubusercontent.com/witusj/R-workshop/gh-pages/Datasets/sessie%202/subs_data.csv", stringsAsFactors = TRUE)
glimpse(subsDF)

## Tabel waarde subsidies per jaar per categorie
subsTable <- xtabs(Bedrag ~ Categorie + Jaar, subsDF)
subsDF <- as.data.frame.matrix(subsTable)
subsDF <- round(subsDF, 0)
kable(subsDF, caption = "Tabel 1. Waarde subsidies per jaar per categorie")

## Staafdiagram
barplot(subsTable,
        main="Subsidiebedragen per categorie",
        xlab="Jaar",
        ylab="Bedrag",
        col=rainbow(5)
)

legend("topright",
       legend = dimnames(subsTable)$Categorie,
       fill=rainbow(5)
)
```
</pre>



Als het document volledig naar wens is, kun je het snel publiceren op internet via [Rpubs](http://rpubs.com/). Klik hiervoor op het 'blauwe oogje'.

![](images/rpubs.png)

<br>
en volg de instructies. De [link](http://rpubs.com/tweety/ExampleRmd) naar je document op RPubs kun je delen met betrokkenen en bijvoorbeeld integreren in het intranet van je organisatie of toevoegen aan een mail. LET OP: de informatie op RPubs is niet afgeschermd en zichtbaar voor iedereen die het webadres heeft.
