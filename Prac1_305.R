library(plyr)
library(ggplot2)
library(cluster)
library(lattice)
library(graphics)
library(grid)
library(gridExtra)
#import the student grades
grade_input = as.data.frame(read.csv("C:/Users/Mandeep/Desktop/BDA PRAC/grades_km_input (1).csv"))
kmdata_orig = as.matrix(grade_input [, c ("Student","English","Math","Science")])

kmdata <- kmdata_orig[,2:4]

kmdata[1 :10,]

wss <- numeric(15)

for (k in 1:15) wss[k] <- sum(kmeans(kmdata, centers = k,nstart = 25)$withinss) 

plot(1:15, wss, type = "b", xlab = "Number of Clusters", ylab = "within Sum of Squares")

km = kmeans(kmdata,3,nstart = 25)
km

#prepare the student data and clustering results for plotting
df= as.data.frame(kmdata_orig[, 2:4])
df$cluster = factor(km$cluster)
centers= as.data.frame(km$centers)

ggplot(data=df, aes(x=English, y=Math, color=cluster)) + 
  geom_point() + theme(legend.position="right") + 
  geom_point(data=centers, aes(x=English,y=Math, color=as.factor(c(1,2,3))),
             size=10, alpha=.3, show.legend=FALSE)

ggplot(data=df, aes(x=English, y=Science, color=cluster)) + 
  geom_point() + 
  geom_point(data=centers,
             aes(x=English,y=Science, color=as.factor(c(1,2,3))), 
             size=10, alpha=.3, show.legend =FALSE)

ggplot(data=df, aes(x=Math, y=Science, color=cluster)) + 
  geom_point() + 
  geom_point(data=centers,
             aes(x=Math,y=Science, color=as.factor(c(1,2,3))), 
             size=10, alpha=.3, show.legend =FALSE)