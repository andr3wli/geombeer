#' geom_beer
#'
#' @param length Consumes numeric vector
#'
#' @return
#' Returns an image of a beer can when used with ggplot2
#' @export
#'
#' @example
#' geom_beer(3)
geom_beer <- function(length = 10) {

  x = length / 2

  beer_top <- beer(x, 2, lineend = "butt")
  beer_bottom <- beer(x, 0, color = "#969696", lineend = "butt")
  beer_body <- beer(x, 1, color = "#ef3b2c")

  logo <- list(
    ggplot2::geom_segment(ggplot2::aes(x = -x + 3.5, xend = x - 3.5, y = 1.5, yend = 1.5),
                 size = 25, lineend = "round", color = "white"),
    ggplot2::geom_text(ggplot2::aes(x = 0, y = 1.5), label="BEER", size = 12.5)
  )

  limits <- list(
    ggplot2::xlim(-10, 10),
    ggplot2::ylim(-6, 6)
  )

  return(c(beer_top, beer_bottom, beer_body, logo, limits))
}



