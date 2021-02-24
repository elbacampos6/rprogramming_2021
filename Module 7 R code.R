
#Download any type of data (from the web or use datasets package) or create your own set.

#Then, on the second step, determine if generic function as discussed in this module can be assigned to your data set,
#and if not, why? (Example, here is list of data set in R)

#In third and last step, explore if S3 and S4 can be assigned to your dataset.

#In your blog, discuss the following questions:
  
#  How do you tell what OO system (S3 vs. S4) an object is associated with?
  
#  How do you determine the base type (like integer or list) of an object?
  
#  What is a generic function?
  
#  What are the main differences between S3 and S4? 


#Install required packages to test for type
install.packages("pryr")
library(pryr)

data() #Find available data set --> Use esoph

data(esoph)

otype(esoph) #What type is it? it is S3

ftype(aggregate) #S3 and generic

#Find the average number of cases per agegroup 
average_perage = aggregate(esoph[,4:5], list(esoph$agegp),mean) #Aggregate is considered a generic function

otype(average_perage) #S3

new_dataset <- merge(x= esoph, y=average_perage, by.x = "agegp", by.y = "Group.1" ) #Combine

otype(new_dataset) #S3

new_dataset$ncases.y #Displays just fine
new_dataset$ncontrols.y #Displays just fine

#Try to make an S4 object
setClass("Florida agegp", slots = list(agegp = "character", alcgp= "character", tobgp = "character", ncases="numeric", ncontrols= "numeric"))

new_agegp <- new("Florida agegp", agegp= "Under 25", alcgp = "0-39g/day", tobgp = "0-9g/day", ncases = 3, ncontrols = 50)

new_agegp

otype(new_agegp) #This is a S4 object

new_agegp@agegp #Correctly displays, under 25

class(new_agegp)

structure(list(esoph), class = "Florida agegp") #Now the class for esoph is florida agegp

attr(esoph,"class") #Data frame
attr(new_agegp,"class") #This is not, just says "Florida agegp"

str(new_agegp)

#This is code taken from online
S4_to_dataframe <- function(s4obj) {
  nms <- slotNames(s4obj)
  
  lst <- lapply(nms, function(nm) slot(s4obj, nm))
  as.data.frame(setNames(lst, nms))
}

# this to a list
test <- S4_to_dataframe(new_agegp) #So now it is a list, with one row. How do i make this into a data frame???? 

as.data.frame(test) #YES IT IS A DATAFRAMEEEEE

new_dataset2 <- rbind(esoph,test) #Combined!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Halleleuja

otype(new_dataset2) #Back to S3
