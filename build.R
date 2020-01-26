
devtools::install_github("gadenbuie/ggweekly")

##### Setup the blogdown site
# blogdown::install_hugo() # Install Hugo if not already
blogdown::hugo_version()
# Using this theme: https://themes.gohugo.io/hugo-theme-techdoc/
# https://github.com/thingsym/hugo-theme-techdoc
# blogdown::new_site(theme = 'thingsym/hugo-theme-techdoc')

# Copy the slides to the docs folder
tocopy <- list.files('Slides/')
file.copy(paste0('Slides/', tocopy), 'docs/slides', recursive = TRUE, overwrite = TRUE)

blogdown::serve_site()
blogdown::stop_server()

blogdown::build_site()


##### Slides
devtools::install_github('yihui/xaringan')
library(xaringan)
