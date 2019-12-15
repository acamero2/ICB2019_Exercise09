## set correct working directory.
setwd("C:/Users/Andrew Cameron/Biocomputing/ex9")

## read data.txt and store as dataframe named "data".
data <- read.csv("data.txt",header=TRUE,stringsAsFactors = FALSE)

## load ggplot2 library.
library(ggplot2)

## plot means for each region as bar graph.
a <- ggplot(data, aes(x=region, y=observations, fill=region))+geom_bar(stat="summary",fun.y="mean")
a
## plot data as scatterplot. Add jitter for readability. Set point shape as Star of David for Hannukah.
b <- ggplot(data, aes(x=region, y=observations))+geom_jitter(shape=11)
b

## The graphs tell very different stories. The first graph ("a") shows that observations for all regions are roughly the same.
## The second graph ("b") reveals that, though similiar in means, the trends of the observations across regions are very different.
## "east" shows a relatively normal distribution, with highest frequency around the mean.
## "north" shows a tight cluster around the mean with very little deviation compared to the other regions.
## "south" shows two sharply defined clusters. Though it has the roughly same mean as the others, no data points actually fall near the mean.
## "west" shows observations dispersed almost evely across the range from 0-30.
## This perhaps demonstrates that, while means can be a useful way to summarize data, they can fail to properly represent trends in the data.
