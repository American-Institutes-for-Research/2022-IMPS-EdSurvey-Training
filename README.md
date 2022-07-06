# 2022-IMPS-EdSurvey-Training

Greetings! 

Thank you for registering the International Meeting of Psychometric Society short course, **Analyzing NAEP and TIMSS Data with Direct Estimation Using the R Packages EdSurvey and Dire**, which will be held from 10:00 am-5:30 pm on Monday, July 11th, 2022. We are very excited to welcome you all!  

Before the training, please install: 

- [R for your operating system](https://www.r-project.org/) 

- [RStudio Desktop](https://www.rstudio.com/products/rstudio/)  

To initialize your system, open RStudio and run the following script:
```
install.packages(c("Dire", "EdSurvey", "devtools"))
devtools::install_github("American-Institutes-for-Research/edsurvey")
```
To practice the EdSurvey sections with 2019 TIMSS datasets, download the datasets using the following script, once EdSurvey is successfully installed.
```
library(EdSurvey)
downloadTIMSS(years = 2019, root = "~/")
```
Note: you may need to change the `root` argument depending on your system. Downloading the data files may take several hours to complete.

Warm Regards, 

Ting, Paul and Emmanuel
