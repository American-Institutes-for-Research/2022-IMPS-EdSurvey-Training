# 2022-IMPS-EdSurvey-Training

Greetings! 

Thank you for registering for our AERA course on **Analyzing NAEP and TIMSS Data Using R**. We are looking forward to meeting every one of you through the zoom webinar.  

Before the training, please install: 

- [R for your operating system](https://www.r-project.org/) 

- [RStudio Desktop](https://www.rstudio.com/products/rstudio/)  

To initialize your system, open RStudio and run the following script:
```
install.packages(c("Dire", "EdSurvey", "devtools"))
devtools::install_github("American-Institutes-for-Research/edsurvey")
```
To practice the achievement levels and gap sections with TIMSS datasets, download the datasets using the following script, once EdSurvey is successfully installed.
```
library(EdSurvey)
downloadTIMSS(years = c(2015, 2019), root = "~/")
```
Note: you may need to change the `root` argument depending on your system. Downloading the data files may take several hours to complete.

Warm Regards, 

Emmanuel, Ting, and Paul