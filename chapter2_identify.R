library(DMwR)

do_plot <- function(d) {
  plot(d, xlab = "")

  sigma <- sd(d, na.rm = TRUE)
  abline(h = mean(d, na.rm = TRUE) + sigma, col = "blue", lty = 2)
  abline(h = mean(d, na.rm = TRUE) - sigma, col = "blue", lty = 2)
  abline(h = median(d, na.rm = TRUE), col = "red", lty = 3)
}

d <- algae$NH4

do_plot(d)
clicked.lines <- identify(d)

d <- d[clicked.lines]
do_plot(d)
