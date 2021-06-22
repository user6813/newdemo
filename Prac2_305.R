data(mtcars)
names(mtcars)
model1<-glm(formula=vs~wt+disp,data=mtcars,family="binomial")
summary(model1)

#Deviance means goodness of fit of a model
#residual deviance:shows how well the response is predicted by the model when the predictors are included
#null deviance:shows how well the response is predicted by the model when only grand mean(intercept) are included.
#degrees of freedom=no.of observations-no.of predictions