library(googleVis)
op <- options(gvis.plot.tag='chart')

adres = "HAN, Kapittelweg 33, 6525 EN Nijmegen"
extra = "Lokaal C106"
directions = "<a href='https://goo.gl/maps/PA9xeFzKYNp'>Get directions</a>"

locaties <- data.frame(adres = "HAN, Kapittelweg 33, 6525 EN Nijmegen",
                       tooltip= paste0(extra, "<br>", directions)
                       )

M1 <- gvisMap(locaties, "adres" , "tooltip",
              options=list(showTip=TRUE,
                           mapType='normal',
                           zoomLevel=16,
                           width=100,
                           height=300
              )
)
plot(M1)
