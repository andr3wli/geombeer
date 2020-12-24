#' Creates an image of a red wine bottle
#'
#' @param length Consumes numeric vector
#'
#' @return
#' Returns an image of a bottle of white wine can when used with ggplot2
#' @export
#'
#' @examples
#' geom_whitewine(10)
geom_whitewine <- function(length = 10) {

  x = length / 2


  wine_top <- wine(x, 2, color = "#dbf47c", lineend = "butt")
  wine_bottom <- wine(x, 1, color = "#dbf47c", lineend = "butt")
  wine_body <- wine(x, -1, color = "#dbf47c")
  wine_neck <- wine(0.6 * x, 3.5, color = "#dbf47c")
  wine_cork <- wine(0.6 * x, 5, color = "#d4c52d")


  logo <- list(
    ggplot2::geom_segment(ggplot2::aes(x = -x + 1.5, xend = x - 1.5, y = 1.5, yend = 1.5),
                          size = 25, lineend = "butt", color = "#ffffe5"),
    ggplot2::annotate("text", x = 0, y = 1.5, label = "WINE", size = 10, color = "#d4c52d")

  )

  limits <- list(
    ggplot2::xlim(-10, 10),
    ggplot2::ylim(-6, 6)
  )

  return(c( wine_cork, wine_neck, wine_top, wine_bottom, wine_body, logo, limits))
}
