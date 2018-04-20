install.packages("readxl")
install.packages("tidyverse")
install.packages('ggmap')
install.packages('purrr')
install.packages("tm")
library(readxl)
library(tidyverse)
library(ggmap)
library(purrr)
library(knitr)
library(ggplot2)
library(tm)
library(stringr)

read <- readPDF(control = list(text = "-layout"))
document <- Corpus(URISource("2018_plans.pdf"), readerControl = list(reader = read))
doc <- content(document[[1]])
doc <- stripWhitespace(doc)
doc <- gsub("Individual Medical by Geographic Region", "", doc)
head(doc)
# Remove footer on first page
# footer_row_1 <- grep("* Anthem Blue Cross/ Blue Shield (HMO Colorado) offers", doc)[1]
# footer_row_2 <- grep("\\f", doc)[1] - 1
#doc <- doc[-footer_row_1]



