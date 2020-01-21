---
title: "Data"
date: 2017-10-17T15:26:15Z
lastmod: 2018-12-08T15:26:15Z
publishdate: 2018-11-23T15:26:15Z
draft: false
weight: 14
---

## Programme of International Student Assessment

[Click here](https://www.oecd.org/pisa/data/2015database/) to go to the download page for the 2015 PISA results. Results from [2012](https://www.oecd.org/pisa/data/pisa2012database-downloadabledata.htm), [2009](https://www.oecd.org/pisa/data/pisa2009database-downloadabledata.htm), [2006](https://www.oecd.org/pisa/data/database-pisa2006.htm), [2003](https://www.oecd.org/pisa/data/database-pisa2003.htm), and [2000](https://www.oecd.org/pisa/data/database-pisa2000.htm) are also available. Download the SPSS version of the files. You will also want to download the codebook files.




## FiveThirtyEight

[FiveThirtyEight](https://fivethirtyeight.com/) makes a lot of their [datasets](https://data.fivethirtyeight.com/) freely available. There is also an [R package](https://cran.r-project.org/web/packages/fivethirtyeight/vignettes/fivethirtyeight.html) that has some of those datasets preformatted for R. The following commands will install and load the package:

```
install.packages('fivethirtyeight')
library(fivethirtyeight)
data(package = 'fivethirtyeight') # Lists all the datasets available in the package
```
