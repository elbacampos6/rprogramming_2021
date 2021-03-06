
#Packages
install.packages("plyr")
library(plyr)

dat = read.table(file.choose(), header= TRUE, sep = ",") #Should be 20 obs, 4 variables

averages = ddply(dat,"Sex",transform, Grade.Average=mean(Grade)) #Create averages by sex

sex = dat$Sex

#Step # 2 Convert the data set a dataframe for names whos' name contains the letter i, 
#then create a new data set with those names, Write those names to a file separated by comma's (CSV)

#Print the table

write.table(averages,"Sorted_Averages") #This has quotes around all the character variables, let's convert to csv

write.table(averages,"Sorted_Averages2", sep=",")


# Filter the original data set to include only data for which the student name
# contained the letter i.
i_students <- subset(dat, grepl("i", dat$Name, ignore.case=T))


#Write CSV files
write.table(i_students,"DataSubset",sep=",")

write.csv(i_students, file.choose(new = FALSE)) #This only worked with my MAC, saves in my created CSV file

write.csv(i_students, file=file.choose(new = TRUE),row.names=TRUE, sep=',', col.names=TRUE) #This only worked with my MAC

write.csv(i_students, "/Users/AdrianaCampos/Box/PhD/Spring 2021/R Programming/Module 8/test.csv") #This worked with my MAC







