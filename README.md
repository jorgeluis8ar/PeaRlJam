PeaRlJam
================
# <img src="man/Figures/Logo.jpg" width="160px" align="right" />
<!-- badges: start -->

[![Build
Status](https://travis-ci.com/johnmackintosh/rockthemes.svg?branch=main)](https://travis-ci.com/johnmackintosh/rockthemes)

![Render
README](https://github.com/johnmackintosh/rockthemes/workflows/Render%20README/badge.svg)

![pkgdown](https://github.com/johnmackintosh/rockthemes/workflows/pkgdown/badge.svg)

[![R build
status](https://github.com/johnmackintosh/rockthemes/workflows/R-CMD-check/badge.svg)](https://github.com/johnmackintosh/rockthemes/actions)
<!-- badges: end -->

A ggplot color palette featuring the best band in the world: Pearl Jam. I used all the 11 studio albums covers from the band to compile a color palette from each album the band has realeased. I used studio albums rather than compilations or redux albums but later updates will consider all covers art work.
## Instalation

The realeased version of PeaRlJam could be installed by running the following command:

```r
remotes::install_github("jorgeluis8ar/PeaRlJam")
```

and loaded with:

```r
library(PeaRlJam)
```
## Extracting colors from album covers

I extract the colors out of the album's covers by using two packages. The first is `colorfindr`. The package allows to read and abstract the image information and stored by using the function `get_colors`. This information is then passed trough the function `make_palette` and we obtain our final colors. Note that I only use 15 colors and that the function have other parameters to fine tune your colors. I the use the package `purrr` and use the fuction `map` to help me create a list of the colors for all my album covers. The final colors are in HEX format, but the `get_colors` function allows the user to abstract other color schemes.

```r
images <- list.files(path = directory) %>% paste0(directory,'/',.)
list_colors <- map(images,function(x) get_colors(img = x) %>% make_palette(n = 15))
```

For further information on color extraction see this geniully awesome [repo](https://github.com/annahensch/R-tutorials/blob/master/ggplot-on-fire.md).

## Examples
### scale_color_pearl() - `Backspacer` palette
I explore firsly the `mpg` dataset to analyze the City Miles per Gallon (CMPG) comparison across engine displacement using our first color palette : `Backspacer` [album cover](https://en.wikipedia.org/wiki/Backspacer). The following code is used to replicate the graph:

```r
ggplot(mpg,aes(x = displ,y = cty, color = class)) + geom_point(size = 3) +
  scale_color_pearl(palette = "Backspacer") +
  labs(x = "Engine displacement (Ltrs)",
       y = "City miles per gallon (CMPG)",
       color = "Type of car",
       title = "CMPG comparisson across engine displacement",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: Backspacer")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     legend.box="vertical",
                     legend.margin=margin())
```

<img src="man/Figures/Figure 1.jpeg" class="center" alt="drawing" style="width:1000px;"/>

### scale_color_pearl() - `Pearl Jam` palette
Here I change the palette to see the pros and cons of each one. In this case I use `Pearl Jam` [album cover](https://en.wikipedia.org/wiki/Pearl_Jam_(album)). The following code is used to replicate the graph:

```r
ggplot(mpg,aes(x = displ,y = cty, color = class)) + geom_point(size = 3) +
  scale_color_pearl(palette = "Pearl Jam") +
  labs(x = "Engine displacement (Ltrs)",
       y = "City miles per gallon (CMPG)",
       color = "Type of car",
       title = "CMPG comparisson across engine displacement",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: Pearl Jam")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     legend.box="vertical",
                     legend.margin=margin())
```

<img src="man/Figures/Figure 5.jpeg" class="center" alt="drawing" style="width:1000px;"/>

### scale_fill_pearl() - `No Code` palette

We can now use the palettes will the fill option. Using the `mpg` database and the `No Code` [album cover](https://en.wikipedia.org/wiki/No_Code) it's posible to produce the following graph:

```r
ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar(color = "black", size = 0.25) + scale_fill_pearl(palette = "No Code") +
  labs(x = "Car manufacturer",
       y = "Count of observations",
       color = "Manufacturer",
       title = "Observations per car manufacturer",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: No Code")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     # legend.position = "bottom",
                     legend.box="vertical",
                     legend.margin=margin())
```

<img src="man/Figures/Figure 2.jpeg" class="center" alt="drawing" style="width:1000px;"/>

### scale_fill_pearl() - `Yield` palette

The same graph with a different palette. In this case I use the `Yield` [album cover](https://en.wikipedia.org/wiki/Yield_(album)) to reproduce the previous graph:

```r
ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar(color = "black", size = 0.25) + scale_fill_pearl(palette = "Yield") +
  labs(x = "Car manufacturer",
       y = "Count of observations",
       color = "Manufacturer",
       title = "Observations per car manufacturer",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: Yield")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     # legend.position = "bottom",
                     legend.box="vertical",
                     legend.margin=margin())
```

<img src="man/Figures/Figure 6.jpeg" class="center" alt="drawing" style="width:1000px;"/>

### scale_fill_pearl() with discrete color aesthetic- `Gigaton` and `Lightning Bolt` palettes

For this section I use the famous and renowed `iris` database. The following graphs use the  graphs `Gigaton` ([album cover](https://en.wikipedia.org/wiki/Gigaton)) and `Lightning Bolt` ([album cover](https://en.wikipedia.org/wiki/Lightning_Bolt_(Pearl_Jam_album))) palettes respectevely.

```r
ggplot(data = iris,aes(x = Sepal.Length, y =Sepal.Width, color = Species)) + geom_point(size = 3)+
  scale_color_pearl(discrete = T,palette = "Gigaton") +
  labs(x = "Sepal Length",
       y = "Sepal Width",
       color = "Specie",
       title = "Relationship between Sepal length and Sepal width",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: Gigaton")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     legend.box="vertical",
                     legend.margin=margin())
```

<img src="man/Figures/Figure 3.jpeg" class="center" alt="drawing" style="width:1000px;"/>

```r
ggplot(data = iris,aes(x = Sepal.Length, y =Sepal.Width, color = Species)) + geom_point(size = 3)+
  scale_color_pearl(discrete = T,palette = "Lightning Bolt") +
  labs(x = "Sepal Length",
       y = "Sepal Width",
       color = "Specie",
       title = "Relationship between Sepal length and Sepal width",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: Lightning Bolt")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     legend.box="vertical",
                     legend.margin=margin())
```

<img src="man/Figures/Figure 4.jpeg" class="center" alt="drawing" style="width:1000px;"/>

## Available palettes

The following tables resumes all the posible palettes the package `PeaRlJam` takes into account.


|Album Name|Palette Name|Number of colors|Colors generated with|Link|
|----------|------------|----------------|---------------------|----|
|Gigaton|Gigaton|15|function `get_colors` + `make_palette`|[Album's page](https://pearljam.com/music/album/gigaton)|
|Lightning Bolt|Lightning Bolt|15|function `get_colors` + `make_palette`|[Album's page](https://pearljam.com/music/album/lightning-bolt)|
|Backspacer|Backspacer|15|function `get_colors` + `make_palette`|[Album's page](https://pearljam.com/music/album/backspacer)|
|Pearl Jam|Pearl Jam|15|function `get_colors` + `make_palette`|[Album's page](https://pearljam.com/music/album/pearl-jam)|
|Riot Act|Riot Act|15|function `get_colors` + `make_palette`|[Album's page](https://pearljam.com/music/album/riot-act)|
|Binaural|Binaural|15|function `get_colors` + `make_palette`|[Album's page](https://pearljam.com/music/album/binaural)|
|Yield|Yield|15|function `get_colors` + `make_palette`|[Album's page](https://pearljam.com/music/album/yield)|
|No Code|No Code|15|function `get_colors` + `make_palette`|[Album's page](https://pearljam.com/music/album/no-code)|
|Vitalogy|Vitalogy|15|function `get_colors` + `make_palette`|[Album's page](https://pearljam.com/music/album/vitalogy)|
|Vs.|Vs.|15|function `get_colors` + `make_palette`|[Album's page](https://pearljam.com/music/album/vs)|
|Ten|Ten|15|function `get_colors` + `make_palette`|[Album's page](https://pearljam.com/music/album/ten-reissue)|

## Related Packages

There are several extensios to this type of packages in R. But I mainly drew inspiration on the `taylorRswift` package by [asteves](https://github.com/asteves). TO my extent this is the first ever packages to use Pearl Jam's album cover art to create color palette extensions. Related packages are:

* [metallicaRt](https://github.com/johnmackintosh/metallicaRt) by [johnmackintosh](https://github.com/johnmackintosh).
* [rockthemes](https://github.com/johnmackintosh/rockthemes) by [johnmackintosh](https://github.com/johnmackintosh).
* [nycpalettes](https://github.com/kellycotton/nycpalettes) by [kellycotton](https://github.com/kellycotton).
* [shakiRa](https://github.com/camartinezbu/shakiRa) by [camartinezbu](https://github.com/camartinezbu).
  
  
