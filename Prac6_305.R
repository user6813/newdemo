#Load the party package. It will automatically load other dependent packages

library(party)
print(head(readingSkills))
#readingSkills
#Create the input data frame
input.dat <- readingSkills[c(1:105),]

#Create the tree
output.tree<-ctree(
  nativeSpeaker ~ age +shoeSize+ score, data=input.dat)

#plot the tree
plot(output.tree)