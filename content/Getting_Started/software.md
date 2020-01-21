---
title: "Software"
date: 2017-10-17T15:26:15Z
lastmod: 2018-12-08T15:26:15Z
publishdate: 2018-11-23T15:26:15Z
draft: false
weight: 11
---

## R and RStudio

* R - [Windows](http://cran.r-project.org/bin/windows/base/) or [Mac](http://cran.r-project.org/bin/macosx/)
* RStudio - [Download Windows or Mac version from here](http://www.rstudio.com/products/rstudio/download/)

If using Windows, you also need to download and install these:

* [RTools](http://cran.r-project.org/bin/windows/Rtools/)
* [ActivePerl](https://www.activestate.com/products/activeperl/downloads/)


## R Packages

Once R is installed, install the following R packages.

```
install.packages(c('devtools', 'tidyverse', 'psych', 'reshape2',
	'blogdown', 'bookdown', 'shiny', 'markdown', 'knitr',
	'foreign',
	'openintro', 'OIdata', 'fivethirdyeight'))
devtools::install_github('jbryer/likert')
devtools::install_github("jbryer/DATA606")
```

## LaTeX

[LaTeX](https://www.latex-project.org/) is a typesetting language for preparing documents. Documents are written in plain text files. Formatting the document is done using specific markup. If you have used HTML, the framework is similar however instead of using `<TAG></TAG>` syntax, LaTeX uses `\TAG{}` format. We will primarily use [Markdown](https://daringfireball.net/projects/markdown/), and its extension [R Markdown](https://rmarkdown.rstudio.com/) for preparing documents in this class. However, when preparing PDF documents, the Markdown will first be converted to LaTeX before creating the PDF file. As such, a LaTeX converter is necessary. There are LaTeX installers for [Windows (MiKTeX)](http://miktex.org/) and [Mac (BasicTeX)](http://www.tug.org/mactex/morepackages.html). Alternatively, the [`tinytex`](https://yihui.name/tinytex/) R package provides an easier way of installing LaTeX directly from within R:

```
install.packages('tinytex')
tinytex::install_tinytex()
```

## Source Control

All course materials will be made available on [Github](https://github.com/) which provides an implementation of the [git](https://git-scm.com/) open source version control system. RStudio supports git directly, but I recommend downloading [Sourcetree](https://www.sourcetreeapp.com/). This is a free desktop client that provides an easier interface for working with Github. You will also need to [create an account on Github](https://github.com/).

For more information, Jenny Bryan's [*Happy Git and Github for the useR*](https://happygitwithr.com/) is a free online book covering the important features of source control for R users.



