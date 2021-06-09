#' Color palettes
#'
#' @export
pearl_jam_palettes <- list(

  `Backspacer` = c("#16151B","#000000","#FFFFFF","#B3B3B3","#3F4140","#F26D7E","#2E388F","#EC2127","#605B9D","#090909","#626367","#F7BC16","#65A4D0","#742624","#C39267"),
  `Binaural` = c("#000000","#0A0000","#1D0100","#FA210E","#320200","#510301","#760602","#C4130B","#A20401","#793D01","#0272BA","#1A3707","#45504A","#97FFFF","#5D6A61"),
  `Gigaton` = c("#000009","#FBFFFF","#8C94A7","#353E4D","#494C5B","#303948","#87868C","#74747E","#9BA1AF","#00142F","#172B43","#565968","#E0D6D4","#D2CDC9","#962E35"),
  `Lightning Bolt` = c("#0A0B0F","#BE021B","#FFFFFF","#7A0C17","#B8051B","#12070F","#260405","#AC0E27","#8C1123","#430009","#9C9C9C","#D9DADE","#1C1C1C","#65666A","#B84E62"),
  `No Code` = c("#101113","#FEFEDC","#B9BDA6","#A3A888","#232323","#E0EAAE","#677947","#D44D16","#404642","#EBC606","#919886","#A5610E","#5E1701","#CE8052","#CAB36F"),
  `Pearl Jam` = c("#036999","#0E202E","#19375B","#1E1E14","#C9A036","#F0C038","#FBFFFF","#B09635","#76361D","#687530","#582A1A","#627130","#AB572B","#888B9C","#8B95B0"),
  `Riot Act` = c("#000000","#EBCC9D","#0D0000","#E8C88F","#E5B468","#B3702C","#8C4D2C","#A6682F","#6C472D","#633E2B","#DAA349","#240A0D","#4A1C1C","#B0864A","#5E5643"),
  `Ten` = c("#000201","#262827","#1F2322","#D2D5DE","#C8C8D2","#432E2D","#882440","#5C1729","#922B48","#621F31","#8D344A","#A63B57","#BB2C58","#D63F6C","#A3A0A7"),
  `Vitalogy` = c("#2E2721","#322B25","#28211B","#3B342E","#443D37","#4E4643","#5B5350","#6B6360","#A5823E","#9B804B","#342915","#453B22","#6A5832","#917A4E","#8E8683"),
  `Vs.` = c("#EEEBE6","#221010","#2C1618","#ECE4E1","#3B2225","#4D3437","#CEBCB8","#6B4F4E","#E0D8D5","#775B5A","#876768","#C8B3B0","#9B7B7C","#B09493","#AC3513"),
  `Yield` = c("#060709","#415989","#534940","#2A2E3A","#252A30","#977957","#B9C1D4","#CACEDA","#6677A2","#61584F","#A58868","#7A5B3C","#53412B","#A1A2A4","#A22B2D")

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
