#Projekt Zawansowane Analizy Przestrzenne
#Analiza plaz Spitsbergen

library(spData)
library(terra)
library(raster)
#Wczcytywanie wszystkich rastrów z katalogu

list = list.files(path = "plaza1-2", pattern = "tif$", all.files = TRUE, full.names = TRUE)
num = 0
for (i in list){
  nazwa_argumentu = paste("dem", num , sep = "_")
  num = num +1
  dem = raster(i)
  assign(nazwa_argumentu,dem)
}
