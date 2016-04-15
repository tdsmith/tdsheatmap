# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello, world!")
}

#' @export
tds.heatmap = function(arr, ...) {
  my_palette = rev(colorRampPalette(c("#D7191C", "#FDAE61", "#FFFFBF", "#ABD9E9", "#2C7BB6"))(n=299))
  gplots::heatmap.2(arr,
                    col=my_palette,
                    trace="none",
                    srtCol=40,
                    cexRow=0.8,
                    cexCol=0.7,
                    notecol="black",
                    denscol="black",
                    na.color="darkgray",
                    ...)
}
