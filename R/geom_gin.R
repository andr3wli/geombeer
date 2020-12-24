#' Create a gin bottle using geom_gin and ggplot2
#'
#' @param length Consumes numeric vector
#'
#' @return
#' Returns an image of a beer can when used with ggplot2
#' @export
#'
#' @example
#' geom_gin(6)
geom_gin <- function(length = 10) {

  x = length / 2


  wine_top <- wine(x, 2, color = "cyan1", lineend = "butt")
  wine_bottom <- wine(x, 1, color = "cyan1", lineend = "butt")
  wine_body <- wine(x, -1, color = "cyan1")
  wine_neck <- wine(0.6 * x, 3.5, color = "cyan1")
  wine_cork <- wine(0.6 * x, 5, color = "black")


  logo <- list(
    ggplot2::geom_segment(ggplot2::aes(x = -x + 1.5, xend = x - 1.5, y = 1.5, yend = 1.5),
                          size = 25, lineend = "butt", color = "#e5f5f9"),
    ggplot2::annotate("text", x = 0, y = 1.5, label = "GIN", size = 10, color = "black")

  )

  limits <- list(
    ggplot2::xlim(-10, 10),
    ggplot2::ylim(-6, 6)
  )

  return(c( wine_cork, wine_neck, wine_top, wine_bottom, wine_body, logo, limits))
}
