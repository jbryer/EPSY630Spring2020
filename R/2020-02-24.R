load('course_data/NYSReportCard-Grade7Math.Rda')

ggplot(reportCard, aes(x = Pass2012, y = Pass2013)) + 
	geom_point() + xlim(c(0,100)) + ylim(c(0,100))

ggplot(reportCard, aes(x = Pass2012, y = Pass2013)) + 
	geom_point() + xlim(c(0,100)) + ylim(c(0,100)) +
	geom_smooth(method = 'lm')

ggplot(reportCard, aes(x = Pass2012, y = Pass2013)) + 
	geom_point() + xlim(c(0,100)) + ylim(c(0,100)) +
	geom_smooth(method = 'lm') +
	geom_smooth(formula = Pass2013 ~ Pass2012^2 + Pass2012, color = 'red')

ggplot(reportCard, aes(x = Pass2012, y = Pass2013)) + 
	geom_point(alpha = 0.1) + xlim(c(0,100)) + ylim(c(0,100)) +
	geom_smooth(method = 'lm') +
	geom_smooth(formula = Pass2013 ~ Pass2012^2 + Pass2012, color = 'red') +
	geom_smooth(method = 'loess', color = 'green', span = 1)

lm.out <- lm(Pass2013 ~ Pass2012, data = reportCard)
summary(lm.out)

plot(reportCard$Pass2012, resid(lm.out))
