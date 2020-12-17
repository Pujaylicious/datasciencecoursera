#First functions

add2 <- function(x, y) {
  x + y
}

above10 <- function(x) {
  use <- x>10
  x[use]
}

above <- function(x, n = 10) {
  use <- x>n
  x[use]
}

cube <- function(x, n) {
  x^3
}

fu <- function(x) {
  g <- function(y) { #g <y + 4
    y + z #y + 4
  }
  z <- 4
  x + g(x) #x + (x+4)
}
s

