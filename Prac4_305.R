#Installation
#install.packages('ggplot2')
#Loading
library(ggplot2)
#load the data

#The data should be a data.frame (Columns are variables and rows are observations)
data(mtcars)
df <- mtcars[, c("mpg","cyl","wt")]
#Convert cyl to a factor variable
df$cyl <- as.factor(df$cyl)
head(df)

#mtcars:Motor Trend Cars Road Tests.

#Description: The data comprises fuel consumption and 10 aspects of automobile design and performance

qplot(x=mpg, y=wt, data=df, geom="point")
qplot(mpg,wt,data=df,geom=c("point","smooth"))
qplot(mpg,wt,data=df,colour=cyl,shape=cyl)

ggplot(data=mtcars, aes(x=wt, y=mpg)) + geom_point()
ggplot(mtcars, aes(x=wt, y=mpg))+
geom_point(size=2, shape=23)
