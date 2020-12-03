#' An internal function for geom_hotdog
#'
#' @param x consumes numeric vector
#' @param y consumes numeric vector
#' @param color indicates the color. The default color is set to #CF8F41 which is beig-ish
#'
#' @return
#' mapping: x = ~-x + 1.5, y = ~y, xend = ~x - 1.5, yend = ~y
#' geom_segment: arrow = NULL, arrow.fill = NULL, lineend = butt, linejoin = round, na.rm = FALSE
#' stat_identity: na.rm = FALSE
#' position_identity #'
#' @export
#'
#' @examples
#' bun(4)
bun <- function(x, y, color = "#CF8F41") {
  list(
    ggplot2::geom_segment(ggplot2::aes(x = -x + 1.5, xend = x - 1.5,
                     y = y, yend = y),
                 size = 60, lineend = "round", color = color)
  )
}
