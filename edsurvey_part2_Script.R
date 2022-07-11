############################################### Slide 1	
############################################### Slide 2	
############################################### Slide 3	
############################################### Slide 4	
#if you do not have 2.7.9005, uncomment this to isntall it	
#devtools::install_github("American-Institutes-for-Research/edsurvey")	
# to load the package	
library(EdSurvey)	
sdf <- readNAEP(system.file("extdata/data", "M36NT2PM.dat", package = "NAEPprimer"))	
ita <- readTIMSS("~/TIMSS/2019", countries="ita", gradeLvl=8)	
############################################### Slide 5	
############################################### Slide 6	
############################################### Slide 7	
summary2(ita, "mmat")	
############################################### Slide 8	
summary2(ita, "mmat", weightVar = NULL)	
############################################### Slide 9	
summary2(ita, "btbm19cc.math", weight="matwgt")	
############################################### Slide 10	
summary2(ita, "btbm19cc.math",  weightVar="matwgt",	
         omittedLevels = TRUE)	
############################################### Slide 11	
############################################### Slide 12	
es1 <- edsurveyTable(mmat ~ bsbg01 + btbg02.math,	
                     data = ita, weightVar="matwgt")	
############################################### Slide 13	
library(knitr)	
library(kableExtra)	
kable(es1$data, format="html") %>%	
  kable_styling(font_size = 16)	
############################################### Slide 14	
es2 <- edsurveyTable(mmat ~ bsbg01 + btbg02.math, data = ita,	
                     pctAggregationLevel = 0, weightVar="matwgt")	
library(knitr)	
library(kableExtra)	
kable(es2$data, format="html") %>%	
  kable_styling(font_size = 16)	
############################################### Slide 15	
############################################### Slide 16	
############################################### Slide 17	
edexercise <- edsurveyTable(mmat ~ bsbg01 + bsdgslm,	
                            weightVar = 'totwgt', data = ita)	
edexercise	
############################################### Slide 18	
############################################### Slide 19	
############################################### Slide 20	
############################################### Slide 21	
lm1 <- lm.sdf(mmat ~ bsbg01 + bsdgslm,	
              weightVar = 'totwgt', data = ita)	
summary(lm1)	
############################################### Slide 22	
############################################### Slide 23	
lmexercise2 <- lm.sdf(mmat ~ bsbg04 + btbg06e.math,	
                      weightVar = 'matwgt', data = ita)	
summary(lmexercise2)	
############################################### Slide 24	
############################################### Slide 25	
############################################### Slide 26	
vn <- searchSDF(data=ita, c("time", "on", "screen"))$variableName	
vn <- searchSDF(data=ita, c("time", "on", "screen"))$variableName	
vnm <- vn[substr(vn,1,2) == "me"]	
ita$totalTimeMat <- pmax(5, apply(ita[,vnm], 1, sum, na.rm=TRUE)/60)	
vns <- vn[substr(vn,1,2) == "se"]	
ita$totalTimeSci <- pmax(5, apply(ita[,vns], 1, sum, na.rm=TRUE)/60)	
############################################### Slide 27	
lmA <- lm.sdf(mmat ~ bsbg01 + totalTimeMat + totalTimeSci,	
              data=ita, weightVar="totwgt")	
############################################### Slide 28	
summary(lmA)	
############################################### Slide 29	
ita <- setTIMSSScoreDict(ita, 'mmat')	
mmlA <- mml.sdf(mmat ~ bsbg01 + totalTimeMat + totalTimeSci,	
                data=ita,	
                weightVar="totwgt")	
summary(mmlA)	
############################################### Slide 30	
summary(mmlA)	
############################################### Slide 31	
ita$totalTimeMatZ <- (ita$totalTimeMat - mean(ita$totalTimeMat))/sd(ita$totalTimeMat)	
ita$totalTimeSciZ <- (ita$totalTimeSci - mean(ita$totalTimeSci))/sd(ita$totalTimeSci)	
mmlB <- mml.sdf(mmat ~ bsbg01 + totalTimeMatZ + totalTimeSciZ,	
                data=ita,	
                weightVar="totwgt")	
############################################### Slide 32	
summary(mmlB)	
scard <- getAttributes(sdf, "scoreCard")	
subset(scard, key=="m107101")	
dparam <- getAttributes(ita, "dichotParamTab")	
head(dparam)	
getAttributes(ita, "testData")	
############################################### Slide 33	
ita2 <- drawPVs(mmlB, data=ita, npv=5L)	
ita2	
############################################### Slide 34	
lm2 <- lm.sdf(mmat_dire ~ bsbg01 + totalTimeMat + totalTimeSci,	
              data=ita2)	
summary(lm2)	
############################################### Slide 35	
lm1a <- lm.sdf(mmat ~ bsbg01 + totalTimeMat + totalTimeSci,	
               data=ita2)	
summary(lm1a)$coefmat	
lm1b <- lm.sdf(mmat_dire ~ bsbg01 + totalTimeMat + totalTimeSci,	
               data=ita2)	
summary(lm1b)$coefmat	
############################################### Slide 36	
############################################### Slide 37	
mmlExercise1 <- mml.sdf(mmat ~ btbm19a.math, data = ita,	
                        weightVar="matwgt")	
summary(mmlExercise1)	
############################################### Slide 38	
############################################### Slide 39	
############################################### Slide 40	
############################################### Slide 41	
vignette("introduction", package="EdSurvey")	
help(package = "EdSurvey")	
############################################### Slide 42	
############################################### Slide 43	
