library(DATA606)
library(ggplot2)
data(sat)

sat$Math.SAT <- as.integer(sat$Math.SAT)
sat$Verbal.SAT <- as.integer(sat$Verbal.SAT)
sat <- sat[complete.cases(sat),]

head(sat)

# Dependent sample test
# RQ: Is there a difference between Verbal and Math scores?
# H0: The difference between verbal and math scores is 0.
# HA: The difference between verbal and math is not 0.

sat$Diff <- sat$Math.SAT - sat$Verbal.SAT

t.test(sat$Diff)

# Independent sample test
# RQ: Is there a difference in Verbal between males and females
# H0: The difference in Verbal  between males and females is 0
# HA: The difference in Verbal between males and females is not 0

t.test(Verbal.SAT ~ Sex, data = sat)


#######

library(openintro)
data(textbooks)

# Independent t-test
t.test(textbooks$uclaNew, textbooks$amazNew)

# Dependent t-test
t.test(textbooks$uclaNew, textbooks$amazNew, paired = TRUE)

ggplot(textbooks, aes(x = uclaNew, y = amazNew)) + 
	geom_point() +
	geom_abline(slope = 1, intercept = 0) + 
	coord_equal()
