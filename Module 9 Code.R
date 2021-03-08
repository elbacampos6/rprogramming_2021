#Using this data, generate three types of visualization on the data set you have chosen. 
#In your blog, discuss and present your three visualizations you will create and express your opinion on these three 
#different types of graphics output.

guns = read.table(file.choose(), header= TRUE, sep = ",") #Should be 20 obs, 4 variables

#Using Lattice
install.packages("lattice")
library(lattice) 

#Scatter plot with a simple linear regression 
xyplot(violent~year, data=guns, grid = TRUE, type =  c( "p", "r" ),  col.line = "darkorange", lwd =3)


#Using ggplot2
library(ggplot2)


#Spaghetti plots with state different colors
ggplot(data = guns, aes(x = year, y = violent, color = state)) +
  geom_line()

#Faceting
ggplot(data = guns, aes(x = year, y = violent)) +
  geom_line() +
  facet_wrap(facets = vars(state))