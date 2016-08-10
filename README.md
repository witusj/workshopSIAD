# R-Workshop
Witek ten Hove  
`r format(Sys.time(), '%d %B, %Y')`  
<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyAfbzoFaFxwmdLDpzlwjku5kCcSgPLb33I" async="" defer="defer" type="text/javascript"></script>


## Inleiding

In deze workshop leer je op een slimme wijze kwantitatieve data verzamelen, deze om te zetten naar bruikbare input voor je analyse en uitkomsten te visualiseren en te rapporteren.

Tijdens de workshop werk je met R. Deze software is speciaal ontwikkeld om makkelijk en snel data in te lezen en te verwerken. Het is op dit moment naast Python de belangrijkste tool voor data analyse en wordt ingezet door ondernemingen als bijvoorbeeld Facebook, Airbnb en Microsoft om informatie uit hun enorme databestanden te genereren. Je bent dus in uitstekend gezelschap als je klaar bent met het leertraject.

Deze workshop is ontwikkeld voor mensen die nog geen of zeer beperkte ervaring hebben met programmeren. Wellicht heb je al een beetje ervaring met Excel of SPSS. Dit is handig, maar geen vereiste om deel te kunnen nemen. R is een programmeertaal, maar zeer eenvoudig qua opzet en je zult merken dat je al heel snel krachtige stukjes code (scripts) kunt schrijven. Je hoeft geen investeringen te doen, want R is volledig open source en werkt op zowel Mac OS, Windows als Linux.

### Workshop sessies
De workshop bestaat uit drie sessies:

* __Sessie 1__: Dinsdag 6 september 2016 van 18:30 tot 21:00u
* __Sessie 2__: Dinsdag 13 september 2016 van 18:30 tot 21:00u
* __Sessie 3__: Dinsdag 20 september 2016 van 18:30 tot 21:00u

Locatie: HAN, Kapittelweg 33, 6525 EN Nijmegen (Lokaal C106)

<!-- Map generated in R 3.3.0 by googleVis 0.5.10 package -->
<!-- Wed Aug 10 15:02:58 2016 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataMapID1d8f7a46d498 () {
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
function drawChartMapID1d8f7a46d498() {
var data = gvisDataMapID1d8f7a46d498();
var options = {};
options["showTip"] = true;
options["mapType"] = "normal";
options["zoomLevel"] =     16;
options["width"] =    100;
options["height"] =    300;

    var chart = new google.visualization.Map(
    document.getElementById('MapID1d8f7a46d498')
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
callbacks.push(drawChartMapID1d8f7a46d498);
})();
function displayChartMapID1d8f7a46d498() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMapID1d8f7a46d498"></script>
 
<!-- divChart -->
  
<div id="MapID1d8f7a46d498" 
  style="width: 100; height: 300;">
</div>
<br>
Tijdens iedere sessie ga je werken aan een opdracht. Je krijgt een dataset (of een verwijzing naar een online databron) en gaat hier informatie uit halen. De instructeur helpt je als je vastloopt of geeft suggesties voor verbeteringen van je code.

### Inschrijving
Aanmelding geschiedt via dit formulier. Er kunnen maximaal 16 personen deelnemen. Mocht er na de aanmelding iets veranderd zijn, waardoor je niet meer kunt deelnemen, geef dit dan door aan de instructeur.

Inschrijving vindt plaats naar volgorde van aanmelding. Nadat de aanmeldingstermijn is verstreken, zullen de deelnemers per mail worden geinformeerd.

De kosten van de workshop bedragen 30 EUR per persoon. Het bedrag zal tijdens de eerste sessie contant worden afgerekend met de instructeur.

### Voorbereiding
Download R en RStudio. Install.packages(c("rvest", "quandmod", "dplyr", "googleVis", "plotly", "leaflet"))

### Basis
Classes, vectors, data frames en lists (nested data frames).

### Naslagwerk
Literatuur

Internet

---

## Sessie 1

In deze sessie gaan we kijken hoe je data uit verschillende bronnen kunt inlezen.

### Inlezen

We beginnen eenvoudig en lezen een lokaal spreadsheet bestand uit. Daarna gaan we data uitlezen vanuit een online spreadsheet. We eindigen met het scrapen van informatie uit een webpagina. `rvest` en `quandmod`

### Bekijken

Hoe ziet de ruwe data er uit? `str()` en `summary()`

---

## Sessie 2

In deze sessie gaan we de kwaliteit van de ruwe data bekijken en leren we hoe je met slimme tools data kunt aanpassen, zodat deze gebruikt kan worden voor verdere analyse of visualisatie.

### Transformeren

Met de package `dplyr` kan data eenvoudig worden aangepast. Installeer `dplyr` via de 'Install' knop in Rstudio of via het commando:

```r
install.packages("dplyr")
```

### Analyseren
`table()`, `plot()` en `hist()`

---

## Sessie 3

In deze sessie kijken we hoe je data visueel kunt opmaken en op een makkelijke manier toegankelijk maakt voor de gebruikers.

### Visualiseren
`googleVis`, `plotly` en `leaflet`

### Presenteren.
*markdown* en *RPubs*



---
