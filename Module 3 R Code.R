Name <- c("Jeb", "Donald", "Ted","Marco", "Carly", "Hillary", "Berine") #I think the curvy quotes don't work well in R
ABC_political  <- c(4, 62, 51, 21, 2, 14, 15) #renamed so it wouldn't cause errors and had to ensure each comma was there to serpate
NCB_political  <- c(12, 75, 43, 19, 1, 21, 19) #renamed so it wouldn't cause errors

political <- cbind(Name, ABC_political, NCB_political) #combined three data set above, got an error for "name" because it did not have the proper case like I had originally defined "Name"

political #looks good - but all are set as characters

#Create dataframe to correct problem from above
political.df <- data.frame(Name, ABC_political, NCB_political) #now it has the name as character and the other two variables as Num

political.df #looks good in console

head(political.df) 

#Find the means
mean(political.df) #Comes out to NA because of the Name variable

#Correct to find means only to numerical variables
mean(political.df[,2:3]) #this didn't work because you have to define this first

#How to correct the problem
r=rowMeans(political.df[,2:3])
r.df=data.frame(Name,r)
mean(as.matrix(political.df[,2:3]))
