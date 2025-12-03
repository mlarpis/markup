library(dplyr)

c(0.5, 1.5, 2.5, 3.5) %>% round()

rounder <- function(x) {
  diff <- x - floor(x)
  out <- x %>% ceiling()
  out[diff < .5] <- floor(x)[diff < .5]
  return(out)
}

c(0.5, 1.5, 2.5, 3.5) %>% rounder()
