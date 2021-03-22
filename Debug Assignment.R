#The code below contains a 'deliberate' bug!  
  
  tukey_multiple <- function(x) {
    outliers <- array(TRUE,dim=dim(x))
    for (j in 1:ncol(x))
    {
      outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
    }
    outlier.vec <- vector(length=nrow(x))
    for (i in 1:nrow(x))
    { outlier.vec[i] <- all(outliers[i,]) } return(outlier.vec) } 
  
  
  #Fix bug
  
  #Fix syntax by pressing control+shift+A , this allows debug to tell me exactly what is wrong... un expected } sign at the last lines
  
 debug(tukey_multiple)
 tukey_multiple <- function(x) 
   {
   outliers <- array(TRUE, dim = dim(x))
   for (j in 1:ncol(x))
   {
     outliers[, j] <- outliers[, j] && tukey.outlier(x[, j])
   }
   outlier.vec <- vector(length = nrow(x))
   for (i in 1:nrow(x))
   {
     outlier.vec[i] <- all(outliers[i, ]) # found bug here "outlier.vec[i] <- all(outliers[i, ]) } return"
    return(outlier.vec)
   }
 }