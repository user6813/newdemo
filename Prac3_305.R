#A researcher is interested in how variables, such as GRE(Graduates Record Exam scores), GPA(Grade Point Average)
mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
head(mydata)
summary(mydata)
#standard deviation : normalising the dataset
sapply(mydata, sd)
#grouping component:rank
mydata$rank <- factor(mydata$rank)

mylogit <- glm(admit ~  gre + gpa +rank, data = mydata, family = "binomial")

summary(mylogit)