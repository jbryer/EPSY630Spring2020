library(googlesheets4)
library(ggplot2)


# Google Form: https://forms.gle/ev7vBVsN8UkcoftK8

# Results
results_url <- 'https://docs.google.com/spreadsheets/d/14Jp-4qsx_PZz5jzvxrId2YUiakxYX5H546wtjYN1UYU/edit?usp=sharing'

results <- read_sheet(results_url)


mms <- c(11, 6, 9, 14, 8, 9, 6, 7, 12)
mean(mms)
var(mms)
sd(mms)
