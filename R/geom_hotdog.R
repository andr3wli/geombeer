#' You can create a yummy hotdog in ggplot2 with geom_hotdog
#'
#' @param length Consumes numeric vector
#'
#' @return
#' An image of a hot dog when used together with ggplot
#' @export
#'
#' @examples
#' geom_hotdog(5)
geom_hotdog <- function(length = 10) {

  x = length / 2

  bun_back <- bun(x, 0.9)
  bun_back_inside <- bun(0.97 * x, 0.6, color = "#FFE6CC")
  bun_front <- bun(x, -2)
  bun_front_shadow <- bun(x, -2.3, color = "#A27139")

  hotdog <- list(
    ggplot2::geom_segment(ggplot2::aes(x = -x, xend = x, y = 0, yend = 0), size = 50, lineend = "round", color = "brown"),
    ggplot2::geom_function(fun = function(x) 0.7 * sin(2 * x),
                  xlim = c(-1.1 * x, 1.1 * x),
                  position = ggplot2::position_nudge(y = 1.2),
                  color = "#ffdb58", size = 8, lineend = "round")
  )

  limits <- list(
    ggplot2::xlim(-10, 10),
    ggplot2::ylim(-6, 6)
  )

  return(c(bun_back, bun_back_inside, hotdog, bun_front_shadow, bun_front, limits))
}
