#' Title
#'
#' @param length Consumes numeric vector
#'
#' @return
#' An image of a boottle of red wine when used with ggplot2
#'
#' @export
#'
#' @examples
#' geom_redwine(5)
geom_redwine <- function(length = 10) {

  x = length / 2


  wine_top <- wine(x, 2, color = "#67001f", lineend = "butt")
  wine_bottom <- wine(x, 1, color = "#67001f", lineend = "butt")
  wine_body <- wine(x, -1, color = "#67001f")
  wine_neck <- wine(0.6 * x, 3.5, color = "#67001f")
  wine_cork <- wine(0.6 * x, 5, color = "#980043")


  logo <- list(
    ggplot2::geom_segment(ggplot2::aes(x = -x + 1.5, xend = x - 1.5, y = 1.5, yend = 1.5),
                 size = 25, lineend = "butt", color = "#980043"),
    ggplot2::annotate("text", x = 0, y = 1.5, label = "WINE", size = 10, color = "#ffffd9")
    # geom_text(aes(x = 0, y = 1.5), label="WINE", size = 12, colour = "green"),

  )

  limits <- list(
    ggplot2::xlim(-10, 10),
    ggplot2::ylim(-6, 6)
  )

  return(c( wine_cork, wine_neck, wine_top, wine_bottom, wine_body, logo, limits))
}


