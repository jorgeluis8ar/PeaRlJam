#' Color palettes
#'
#' @export
pearl_jam_palettes <- list(

  `Backspacer` = c('#e0bfaf','#7aacb2','#5b6aab','#816053','#121217','#e22a39','#ebbb1f','#3d655c','#463a38','#323772','#252d46'),
  `Binaural` = c('#040404','#cf210d','#5c1608','#43a36c','#addcb4','#285e18','#2e0c04','#0970a7','#a57a2c','#192e05','#043877'),
  `Gigaton` = c('#2e3e50','#cccfd4','#778393','#97a7b8','#8a98ae','#6e6870','#060911','#051127','#c02e37','#596c79','#c96661'),
  `Lightning Bolt` = c('#ba041c','#eeebec','#770e17','#0c0b0c','#350e0f','#84848c','#838c8a','#e57b94','#44444c','#434c4b','#222d2b'),
  `No Code` = c('#913418','#23271c','#af8421','#d4cda9','#f4f2de','#6d7965','#c6a85f','#b37461','#9aa38e','#49758f','#4c8c3c'),
  `Pearl Jam` = c('#c7a036','#056491','#24262a','#1a2444','#1a3758','#134266','#984726','#dfe2e8','#838c3f','#6e745b','#828fac'),
  `Riot Act` = c('#b98449','#663a29','#ecd0a7','#050404','#843b2b','#2f1411','#767474','#3b3c3a','#7c7c7c','#1b1c17','#3c303c'),
  `Ten` = c('#ced0d9','#78273b','#1c1518','#d84469','#b73457','#997583','#a06c59','#b98fa5','#520e13','#3c544e','#c59c6c'),
  `Vitalogy` = c('#a0854a','#322b24','#6c6254','#4e453d','#5b544e','#534b4c','#433d3c','#827c6e','#7c7474','#140b07','#13150d'),
  `Vs.` = c('#3a1f20','#6b504e','#917676','#ece5e1','#b49a94','#c2adac','#726465','#d0bfb9','#d0633e','#aba5a4','#9c3c4c'),
  `Yield` = c('#b8bbc4','#758aad','#556995','#907351','#04040b','#5b4633','#5b5a64','#a22f32','#2f1f16','#302f33','#3c4442')

)

#' Function to interpolate a color palette
#'
#' @param palette Character name of palette in pearl_jam_palettes
#' @param reverse Boolean true if palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @export
pearl_jam_pal <- function(palette = "Ten", reverse = FALSE, ...){
  pal <- pearl_jam_palettes[[palette]]

  if(reverse){
    pal <- rev(pal)
  }

  grDevices::colorRampPalette(pal, ...)
}


#' Color scale for Pearl Jam colors
#'
#' @param palette Character name of palette in pearl_jam_palettes
#' @param discrete Boolean if color aesthetic is discrete
#' @param reverse Boolean indicating whether palette should be reversed
#' @param ... Additional arguments used to discrete_scale() or scale_fill_gradientn()
#'   to automatically interpolate between colours.
#' @export
scale_color_pearl <- function(palette = "Ten",
                               discrete = TRUE, reverse=FALSE,...){
  pal <- pearl_jam_pal(palette = palette, reverse = reverse)

  if(discrete){
    ggplot2::discrete_scale("colour", paste0("pearl_", palette), palette = pal, ...)
  }else{
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale for Pearl Jam colors
#'
#' @param palette Character name of palette in pearl_jam_palettes
#' @param discrete Boolean if color aesthetic is discrete
#' @param reverse Boolean if palette should be reversed
#' @param ... Additional arguments used to discrete_scale() or scale_fill_gradientn()
#'   to automatically interpolate between colours.
#' @export
scale_fill_pearl <- function(palette = "Ten",
                              discrete = TRUE, reverse = FALSE, ...){
  pal <- pearl_jam_pal(palette = palette, reverse = reverse)

  if(discrete){
    ggplot2::discrete_scale("fill", paste0("pearl_", palette), palette = pal, ...)
  }else{
    ggplot2::scale_fill_gradientn(colours = pal(256),...)
  }
}
