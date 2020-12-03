#' An internal function for geom_redwine and geom_whitewine and geom_gin
#'
#' @param x consumes a numeric vector
#' @param y consumes a numeric vector
#' @param color indicates the color. The default color is set to #00441b which is burgandy-ish
#' @param lineend Line end style (round, butt, square). Default is set to butt.
#'
#' @return
#' mapping: x = ~-x + 1.5, y = ~y, xend = ~x - 1.5, yend = ~y
#' geom_segment: arrow = NULL, arrow.fill = NULL, lineend = butt, linejoin = round, na.rm = FALSE
#' stat_identity: na.rm = FALSE
#' position_identity
#' @export
#'
#' @examples
#' wine(9)
wine <- function(x, y, color = "#00441b", lineend = "butt") {
  list(
    ggplot2::geom_segment(ggplot2::aes(x = -x + 1.5, xend = x - 1.5,
                     y = y, yend = y),
                 size = 60, lineend = lineend, color = color)
  )
}
