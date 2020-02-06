library(likert)
library(readxl)
library(tidyverse)

results <- readxl::read_excel('course_data/Stats_Survey.xlsx') %>%
	as.data.frame()

mass.items <- c('I find math interesting.',
				'I get uptight during math tests.',
				'I think that I will use math in the future.',
				'Mind goes blank and I am unable to think clearly when doing my math test.',
				'Math relates to my life.',
				'I worry about my ability to solve math problems.',
				'I get a sinking feeling when I try to do math problems.',
				'I find math challenging.',
				'Mathematics makes me feel nervous.',
				'I would like to take more math classes.',
				'Mathematics makes me feel uneasy.',
				'Math is one of my favorite subjects.',
				'I enjoy learning with mathematics.',
				'Mathematics makes me feel confused.')
stats.items <- c('Descriptive Statistics',
                 'Probability',
                 'Data visualizations',
                 'Central limit theorem',
                 'Null hypothesis testing',
                 'Assumptions for regression',
                 'Linear regression',
                 'Multiple regression',
                 'ANOVA',
                 'Type I and II errors',
                 'Correlation',
                 'SPSS',
                 'R',
                 'Chi Squared tests')

str(results)
names(results)

results$Gender <- factor(results$Gender, levels = c('M', 'F', 'N', 'P'),
						 labels = c('Male', 'Female', 'Non-binary', 'N/A'))

results$Level <- factor(results$Level, levels = c('M', 'D'),
						labels = c("Master's", "Doctorate"))

results$GradCourse <- results$GradCourse == 'Y'

for(i in 3:16) {
	results[,i] <- factor(results[,i],
						  levels = 1:5,
						  labels = c('Strongly Disagree', 'Disagree', 'Neutral',
						  		   'Agree', 'Strongly Agree'),
						  ordered = TRUE)
}

for(i in 18:31) {
	results[,i] <- factor(results[,i],
						  levels = 1:5,
						  labels = c('Not at all familiar',
						  		     'Sligtly familiar',
						  		     'Somewhat familiar',
						  		     'Moderately familiar',
						  		     'Extremely familiar'),
						  ordered = TRUE)
}


##### Descriptive / Background
table(results$GradCourse) %>% print %>% prop.table
ggplot(results, aes(x = GradCourse)) + geom_bar(alpha = 0.5)

table(results$Level) %>% print %>% prop.table

table(results$Gender) %>% print %>% prop.table()

##### Math Anxiety Survey Scale
mass.results <- results[,3:16]
names(mass.results) <- mass.items

mass.likert <- likert(mass.results)
plot(mass.likert)

mass.likert2a <- likert(mass.results[,1:7], grouping = results$GradCourse)
plot(mass.likert2a)

mass.likert2b <- likert(mass.results[,8:14], grouping = results$GradCourse)
plot(mass.likert2b)

##### Statistical Topic Familiarity
stats.results <- results[,18:31]
names(stats.results) <- stats.items

stats.likert <- likert(stats.results)
plot(stats.likert, center = 2.5)
