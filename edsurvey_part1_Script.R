############################################### Slide 1	
############################################### Slide 2	
############################################### Slide 3	
############################################### Slide 4	
############################################### Slide 5	
############################################### Slide 6	
############################################### Slide 7	
############################################### Slide 8	
############################################### Slide 9	
############################################### Slide 10	
############################################### Slide 11	
############################################### Slide 12	
############################################### Slide 13	
############################################### Slide 14	
############################################### Slide 15	
# this line is not executed	
x <- 12	
x	
j <- 12	
J	
############################################### Slide 16	
?mean	
############################################### Slide 17	
colors <- c("red", "green", "blue")	
colors	
numbers <- c(1, 2, 3)	
numbers	
############################################### Slide 18	
mean(x = numbers)	
mean(numbers)	
############################################### Slide 19	
#install Dire 2.0.1	
# you may need to get rtools	
install.packages("Dire")	
	
# then install devtools and EdSurvey from GitHub	
install.packages("devtools")	
devtools::install_github("American-Institutes-for-Research/edsurvey")	
# to load the package	
library(EdSurvey)	
############################################### Slide 20	
vignette("introduction", package="EdSurvey")	
help(package = "EdSurvey")	
############################################### Slide 21	
############################################### Slide 22	
############################################### Slide 23	
############################################### Slide 24	
sdf <- readNAEP(system.file("extdata/data", "M36NT2PM.dat", package = "NAEPprimer"))	
ita <- readTIMSS("~/TIMSS/2019/", countries="ita", grade=8)	
############################################### Slide 25	
math17 <- readNAEP("//path_to_directory/Data/M48NT2AT.dat")	
############################################### Slide 26	
############################################### Slide 27	
############################################### Slide 28	
############################################### Slide 29	
############################################### Slide 30	
############################################### Slide 31	
############################################### Slide 32	
############################################### Slide 33	
############################################### Slide 34	
############################################### Slide 35	
############################################### Slide 36	
print(ita)	
############################################### Slide 37	
dim(ita)	
############################################### Slide 38	
colnames(ita)	
############################################### Slide 39	
searchSDF("education", ita)	
searchSDF("bsdgedup", ita, levels = TRUE)	
searchSDF("", ita)	
############################################### Slide 40	
levelsSDF("bsdgedup", ita)	
############################################### Slide 41	
showCodebook(ita)	
View(showCodebook(ita))	
############################################### Slide 42	
showPlausibleValues(ita)	
showPlausibleValues(ita, verbose = TRUE)	
############################################### Slide 43	
showWeights(ita)	
showWeights(ita, verbose = TRUE)	
############################################### Slide 44	
############################################### Slide 45	
############################################### Slide 46	
############################################### Slide 47	
############################################### Slide 48	
############################################### Slide 49	
gddat <- getData(ita, varnames = c('bsdgedup', 'mmat', 'totwgt'),	
              addAttributes = TRUE, omittedLevels = FALSE)	
############################################### Slide 50	
# Note: head returns the first 6 rows of a data frame	
head(gddat)	
############################################### Slide 51	
gddat <- getData(ita, varnames = c('bsdgedup', 'mmat', 'totwgt'),	
              addAttributes = TRUE, omittedLevels = FALSE)	
############################################### Slide 52	
ita_females <- subset(ita, itsex %in% c("FEMALE"))	
dim(ita)	
dim(ita_females)	
############################################### Slide 53	
ita$books <- ifelse(ita$bsbg04 %in% c("NONE OR VERY FEW (0-10 BOOKS)", "ENOUGH TO FILL ONE SHELF (11-25 BOOKS)"), "0-25", as.character(ita$bsbg04))	
table(ita$books, ita$bsbg04)	
############################################### Slide 54	
res <- searchSDF(c("visits", "screen"), ita)	
ita$visits <- apply(ita[,res$variableName], 1, sum, na.rm=TRUE)	
