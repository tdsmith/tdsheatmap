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
  my_palette = rev(colorRampPalette(c("#D7191C",
                                      "#FDAE61",
                                      "#FFFFBF",
                                      "#ABD9E9",
                                      "#2C7BB6"))
                    (n=299))
  defaults = list("srtCol"=40,
                  "col"=my_palette,
                  "cexRow"=0.8,
                  "cexCol"=0.7,
                  "trace"="none",
                  "notecol"="black",
                  "denscol"="black",
                  "na.color"="darkgray")
  args = list(x=arr, ...)
  for(var in names(defaults)) {
    if(!exists(var, where=args)) {
      args[[var]] = defaults[[var]]
    }
  }
  do.call(gplots::heatmap.2, args)
}
