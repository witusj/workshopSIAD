# R-Workshop
Witek ten Hove  
`r format(Sys.time(), '%d %B, %Y')`  
<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyAfbzoFaFxwmdLDpzlwjku5kCcSgPLb33I" async="" defer="defer" type="text/javascript"></script>


# Inleiding

In deze workshop leer je op een slimme wijze kwantitatieve data verzamelen, deze om te zetten naar bruikbare input voor je analyse en uitkomsten te visualiseren en te rapporteren.

Tijdens de workshop werk je met R. Deze software is speciaal ontwikkeld om makkelijk en snel data in te lezen en te verwerken. Het is op dit moment naast Python de belangrijkste tool voor data analyse en wordt ingezet door ondernemingen als bijvoorbeeld Facebook, Airbnb en Microsoft om informatie uit hun enorme databestanden te genereren. Je bent dus in uitstekend gezelschap als je klaar bent met het leertraject.

Deze workshop is ontwikkeld voor mensen die nog geen of zeer beperkte ervaring hebben met programmeren. Wellicht heb je al een beetje ervaring met Excel of SPSS. Dit is handig, maar geen vereiste om deel te kunnen nemen. R is een programmeertaal, maar zeer eenvoudig qua opzet en je zult merken dat je al heel snel krachtige stukjes code (scripts) kunt schrijven. Je hoeft geen investeringen te doen, want R is volledig open source en werkt op zowel Mac OS, Windows als Linux.

## Workshop sessies
De workshop bestaat uit drie sessies:

* __Sessie 1__: Dinsdag 6 september 2016 van 18:30 tot 21:00u
* __Sessie 2__: Dinsdag 13 september 2016 van 18:30 tot 21:00u
* __Sessie 3__: Dinsdag 20 september 2016 van 18:30 tot 21:00u

Locatie: HAN, Kapittelweg 33, 6525 EN Nijmegen (Lokaal C106)

<!-- Map generated in R 3.3.0 by googleVis 0.5.10 package -->
<!-- Thu Aug 11 02:27:31 2016 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataMapID3aa078bb433 () {
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
function drawChartMapID3aa078bb433() {
var data = gvisDataMapID3aa078bb433();
var options = {};
options["showTip"] = true;
options["mapType"] = "normal";
options["zoomLevel"] =     16;
options["width"] =    100;
options["height"] =    300;

    var chart = new google.visualization.Map(
    document.getElementById('MapID3aa078bb433')
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
callbacks.push(drawChartMapID3aa078bb433);
})();
function displayChartMapID3aa078bb433() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMapID3aa078bb433"></script>
 
<!-- divChart -->
  
<div id="MapID3aa078bb433" 
  style="width: 100; height: 300;">
</div>
<br>
Tijdens iedere sessie ga je werken aan een opdracht. Je krijgt een dataset (of een verwijzing naar een online databron) en gaat hier informatie uit halen. De instructeur helpt je als je vastloopt of geeft suggesties voor verbeteringen van je code.

## Inschrijving
Aanmelding geschiedt via dit formulier. Er kunnen maximaal 16 personen deelnemen. Mocht er na de aanmelding iets veranderd zijn waardoor je niet meer kunt deelnemen, geef dit dan door aan de instructeur.

Inschrijving vindt plaats naar volgorde van aanmelding. Nadat de aanmeldingstermijn is verstreken, zullen de deelnemers per mail worden geinformeerd.

De kosten van de workshop bedragen 30 EUR per persoon. Het bedrag zal tijdens de eerste sessie contant worden afgerekend met de instructeur.

## Voorbereiding
Download R en RStudio. Install.packages(c("gsheet", "rvest", "quandmod", "dplyr", "googleVis", "plotly", "leaflet"))

## Basis
Om goed te kunnen leren hoe R werkt, is het belangrijk bekend te raken met een aantal basiselementen, `classes`, `vectors` en `data frames`, en te begrijpen hoe deze elementen zich tot elkaar verhouden.

De belangrijkste datatypes (`classes`) binnen R zijn: getallen, letters en factoren. Een vector is een geordende verzameling van elementen van hetzelfde type data. 

Bijvoorbeeld de vector: `("Warszawa", "London", "Paris")` is een vector van plaatsen en de elementen zijn van `class` letters (`character`). De elementen uit de vector `("Man", "Man", "Vrouw")` kunnen van `class` letters zijn, maar waarschijnlijk is de functie van zo een vector een verzameling van factoren met 2 levels: `Man` en `Vrouw`.


```r
## Vectoren en classes
Plaats <- c("Warszawa", "London", "Paris")
class(Plaats)
```

```
## [1] "character"
```

```r
Geslacht <- c("Man", "Man", "Vrouw")
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

Ieder element binnen een vector heeft een indexnummer beginnend bij 1. Als we de vector `("Warszawa", "London", "Paris")` de naam `Plaats` geven dan heeft het element `Plaats[2]` de waarde `"London"`.


```r
## Vectorindices
Plaats[2]
```

```
## [1] "London"
```

We kunnen met behulp van indexnummers elementen toevoegen of verwijderen.


```r
## Vectorelementen toevoegen.
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

Stel we creëren een tweede vector `Land` met de elementen `("Polska", "UK", "Nederland")`. We kunnen nu de vectoren `Plaats` en `Land` samenvoegen in een data frame en via de indexen [rij,kolom] de elementen opvragen.


```r
## Data frame structuur
Land <- c("Polska", "UK", "Nederland")
Locatie <- data.frame(Plaats, Land)
class(Locatie)
```

```
## [1] "data.frame"
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

We kunnen ook de afzonderlijke variabelen binnen een data frame oproepen via het `$` teken.


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

### Vragenset Basis

1. Zoals je ziet hebben de variabelen `Plaats` en `Land` uit het voorbeeld door de omzetting naar een data frame de `class` `factor` gekregen. Hoe zet je de `class` van beide variabelen weer terug naar `character`?

## Naslagwerk
Literatuur

Internet

---

# Sessie 1 - Inlezen / Bekijken

In deze sessie gaan we kijken hoe je data uit verschillende bronnen kunt inlezen. We beginnen eenvoudig en lezen een lokaal opgeslagen bestand uit. Daarna gaan we data uitlezen vanuit een online spreadsheet. We eindigen met het scrapen van informatie uit een webpagina.

## Lokaal bestand

Maak een nieuw R Script aan in RStudio:

![<br>of _File >> New File >> R Script_](images/newfile.png)

en bewaar het in een voor jou logische folder op je computer (geef het een zinvolle naam, bijvoorbeeld `readSessie1.R`). Verwijs in RStudio naar deze werkfolder door te klikken op *Session >> Set Working Directory >> To Source File Location*

Download nu het volgende bestand: <a href="https://github.com/witusj/R-workshop/raw/gh-pages/datasets/sessie%201/stud_perf.csv" download>Student Performance (csv)</a> en sla het op in de werkfolder. Nu ben je klaar om je eerste data in te lezen in R.

In het scriptvenster in RStudio schrijf (of kopieer) je volgende instructie:

```r
## Lees data uit lokaal csv-bestand
studDF <- read.csv("stud_perf.csv", stringsAsFactors = FALSE)
```
Selecteer alles en klik op Run:

![<br>of _Ctrl + Enter_](images/run.png)

In de console van RStudio zie je dat de instructies worden uitgevoerd, maar je ziet verder geen resultaten. R heeft echter alle data in het geheugen geladen. Je kunt dit zien in het *Environment* veld waar nu een data object *studDF* is toegevoegd:

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
Het gaat hier klaarblijkelijk om een cijferlijst van studenten. Alles lijkt correct te zijn ingelezen door R en we kunnen nu wat nauwkeuriger kijken naar de data. Het is een goede gewoonte om eerst de structuur van de data te onderzoeken:


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
en we zien dat de data de vorm van een data frame (tabel) heeft met 109 rijen (observaties) en 12 kolommen (variabelen). De eerste variabele heet `Voor` en de elementen bestaan uit letters (`chr`). De derde variabele heet `Kennistoetsen` en de elementen zijn getallen (`num`). De vijfde variabele heet `Schriftelijk.Voldoende` en bestaat uit gehele getallen (`int`).

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

### Vragenset 1
1. Hoeveel procent van de studenten heeft voor het schriftelijk tentamen (inclusief bonuspunten) een voldoende gehaald?

2. In hoeveel procent van de gevallen hadden studenten de bonuspunten nodig om voor het schriftelijk een voldoende te halen?

## Online bestand
`gsheet`


## Web scraping
`rvest` en `quandmod`

---

# Sessie 2 - Muteren / Analyseren

In deze sessie gaan we de kwaliteit van de ruwe data bekijken en leren we hoe je met slimme tools data kunt aanpassen, zodat deze gebruikt kan worden voor verdere analyse of visualisatie.

## Muteren

Met de package `dplyr` kan data eenvoudig worden aangepast. Installeer `dplyr` via de 'Install' knop in Rstudio of via het commando:

```r
install.packages("dplyr")
```

## Analyseren
`table()`, `plot()` en `hist()`

---

# Sessie 3 - Visualiseren / Presenteren

In deze sessie kijken we hoe je data visueel kunt opmaken en op een makkelijke manier toegankelijk maakt voor de gebruikers.

## Visualiseren
`googleVis`, `plotly` en `leaflet`

## Presenteren.
*markdown* en *RPubs*



---
