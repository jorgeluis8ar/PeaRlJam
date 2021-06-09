cat("\f")
rm(list=ls())
options("scipen"=100, "digits"=4)
setwd("~/Documents/Universidad/Taller de R/Proyectos propios/PeaRlJam")

packages=c("colorfindr","tidyverse","ggplot2",'purrr','dplyr')
lapply(packages,require,character.only=T)
rm(packages)

images <- list.files(path = 'man/Album covers') %>% paste0('man/Album covers/',.)
list_colors <- map(images,function(x) get_colors(img = x) %>% make_palette(n = 15))
