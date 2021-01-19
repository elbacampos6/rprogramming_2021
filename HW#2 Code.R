assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) 
  { return(sum(assignment)/length(someData)) } #This doesn't work because the vectorname is called assignment2 not assignment
myMean(assignment2)
myMean2 <- function(assignment2) #This one works beause it is correctly calling assignment2
{ return(sum(assignment2)/length(assignment2))}
+myMean2(assignment2)
