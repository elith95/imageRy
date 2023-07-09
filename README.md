# imageRy

Manipulate and share raster images in R.
Original code by Duccio Rocchini, Giovanni Nocera, Ludovico Chieffallo, and Elisa Thouverai.

[Guide here](https://htmlpreview.github.io/?https://github.com/ducciorocchini/imageRy/blob/main/imageRy.html)

[Data to be uploaded can be seen here](https://htmlpreview.github.io/?https://github.com/ducciorocchini/imageRy/blob/main/data/descxription.md)

> **Warning**
> Packages needed to properly run imageRY:
+ library(imageRy)
+ library(terra)
+ library(ggplot2)
+ library(viridis)
+ library(fields)

> **Note**
> How to import data without im.import()

# example:

library(terra)

mato <- system.file("data/matogrosso_ast_2006209_lrg.jpg", package="imageRy")

mato <- rast(mato)

> **Warning** Things to be checked:
+ im.ggplot(): automatically import first layer, grey background
+ im.ggplotRGB(): grey background
+ im.pca(): like im.classify()
+ im.import(): also import several layers via pattern=""


plot(mato)

> **Warning** To be checked
+ im.ggplot(): leave grey, take the first layer
+ im.ggplotRGB(): leave grey
+ im.pca()
#
