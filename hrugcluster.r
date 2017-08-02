##----------------------------------------------------------------
## Title: hrugcluster.r
## Author: Ed Goodwin
## Date: 08.01.2017
## Description: 
##  HRUG Intro to Clustering Meetup code
##----------------------------------------------------------------

# hrugcluster.r BEGIN CODE
library(ggplot2)
library(dplyr)
library(GMD)

x_clust = 3

hrugclust.dat = 
  read.csv("https://raw.githubusercontent.com/HoustonUseRs/clusterworkshop/master/hrugcluster.csv")

hrugclust.dat = hrugclust.dat[,2:3]
kmhrug = kmeans(hrugclust.dat, x_clust)
kmhrug
kmeansIC(hmhrug)

## Visualize the data
x = hrugclust.dat %>% cbind(kmhrug$cluster) %>% as.data.frame()

p = ggplot(data = x, aes(x = x[,1], y = x[,2])) + 
  geom_point(colour = x[,3], size = 4) + 
  ylab("Distance") + xlab("Pets")
p