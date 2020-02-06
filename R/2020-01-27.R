# R is a big calculator
2 + 3

myvar <- 2 + 3
myvar

data(mtcars)

# Delete a value (i.e. dataset)
rm(mtcars)

library(boot)

# Install packages (only need to do once per installation)
pkgs <- c('tidyverse','devtools','reshape2','RSQLite',
		  'psa','multilevelPSA','PSAboot','TriMatch','likert',
		  'openintro','OIdata','psych','knitr','markdown','rmarkdown','shiny')

install.packages(pkgs)
install.packages('mice')

devtools::install_github('jbryer/ipeds')
devtools::install_github('jbryer/sqlutils')
devtools::install_github("seankross/lego")
devtools::install_github("jbryer/DATA606")

library(likert)
data(pisaitems)
items29 <- pisaitems[,substr(names(pisaitems), 1,5) == 'ST25Q']
names(items29) <- c("Magazines", "Comic books", "Fiction", 
					"Non-fiction books", "Newspapers")
l29 <- likert(items29)
summary(l29)
plot(l29)


tmp <- c(2112, pi)
tmp

tmp <- c(2112, pi, 'EPSY630')
tmp
class(tmp)


#### Starting Lab 1
library(DATA606)
startLab('Lab1')
