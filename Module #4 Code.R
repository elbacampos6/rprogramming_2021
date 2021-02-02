FREQUENCY <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c(1,1,1,1,0,0,0,0,NA,1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)

#I created matrices but I don't think it was needed since the above is a vector
#frequency <- as.matrix(FREQUENCY)
#BP <- as.matrix(BP)
#first <- as.matrix(First)
#second <- as.matrix(Second)
#finaldecision <-as.matrix(FinalDecision)

data <- data.frame(frequency,BP,first,second,finaldecision)

#Boxplot 
boxplot(data) #This shows all variables in one boxplot but doesn't make sense because of the yaxis
boxplot(data$frequency) #This is for variable frequency
boxplot(data$BP) #This is for variable BP

#Historgram
hist(data$frequency,  main = paste("Histogram of frequency"), xlab = "Frequency")
hist(data$BP ,  main = paste("Histogram of BP"), xlab = "BP")
hist(data$first,  main = paste("Histogram of First Doctor"),xlab = "First Doctor")
hist(data$second,  main = paste("Histogram of Second Doctor"),xlab = "Second Doctor")
hist(data$finaldecision,  main = paste("Histogram of Final Decision"),xlab = "Final Decision")

