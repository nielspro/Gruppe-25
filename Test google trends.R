library(devtools)
devtools::install_github("dvanclev/GTrendsR")
devtools::install_github("trinker/gtrend")
library(gtrend)
library(dplyr)
library(ggplot2)
library(scales)


terms <- c("venstre")


out <- gtrend_scraper("thomsenaksel@gmail.com", "At23345208", terms, geo="DK")

out %>%
  trend2long() %>%
  plot() 

print(out)
