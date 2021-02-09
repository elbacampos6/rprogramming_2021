#Find the value of inverse of a matrix, determinant of a matrix by using the following values:
# A=matrix(1:100, nrow=10)
# B=matrix(1:1000, nrow=10)
  
#A good start will be:
A <- matrix(1:100, nrow=10)  
B <- matrix(1:1000, nrow=10)

#This is a sqaure matrix --> has 10 columns and 10 rows so try using solve() function
A2 <- solve(A) #Get an error because the matrix is singular? But it is sqaure since it is 10X10
A3 <- solve(B) #Get an error because this matrix is NOT square, you cannot find the inverse of a non-square matrix

#Installed this package to try to get inverse because solve wasn't working
install.packages("matlib")

library(matlib)

#Find out if inverse exists
det(A) #it equals 0 so inverse doesn't exist. It is a singular matrix even though it is a square matrix

#Let's try for B
det(B) #Gives me an error says it must be a square matrix

#All resources I found said there is no inverse matrix for non-square matrices... 

