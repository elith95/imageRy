# im.plotRGB: plotRGB choosing bands
#Aggiungendo i valori di default per le bande r, g e b si possono unificare im.plotRGB e im.plotRGB.auto
im.plotRGB <- function(x,r,g,b){
  plotRGB(x,r,g,b,stretch="lin")
}
