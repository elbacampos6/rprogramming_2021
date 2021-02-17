#Answer the following questions and post your answer on your blog:
#  1. Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).
#  a) Find A + B
#b) Find A - B

#2. Using the diag() function to build a matrix of size 4 with the following values in the diagonal 4,1,2,3.

#3. Generate the following matrix:
  
  ## [,1] [,2] [,3] [,4] [,5]
  ## [1,] 3 1 1 1 1
  ## [2,] 2 3 0 0 0
  ## [3,] 2 0 3 0 0
  ## [4,] 2 0 0 3 0
  ## [5,] 2 0 0 0 3
#  Hint: You can use the command diag() to build it.

#Question 1
A = matrix(c(2,0,1,3), ncol=2)
B = matrix(c(5,2,4,-1), ncol=2)

#Find A plus B 
AplusB = A + B

#FInd A - B
AminusB = A - B

#Question 2
DiagonalQ = diag(c(4,1,2,3), nrow = 4, ncol = 4) #Row and column is 4 because that is the size you want of the matrix

#Question 3
Q3 = matrix(c(3, 1, 1, 1, 1, 2, 3, 0, 0, 0, 2, 0, 3, 0, 0, 2, 0, 0, 3, 0, 2, 0, 0, 0, 3), nrow=5, ncol=5) #I feel like this isn't how you wanted it

#This is the answer provided:
D = diag(3,5,5)

M = matrix(c(0,1,1,1,1,2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,2,0,0,0,0), ncol=5,byrow=T) #I feel like this is a lot of work, I tried to create two vectors and combine them into a matrix but i had no success

Diagonal3 = D+M

#Other method:
G <- diag(3,5,5) #Create desired diagonals
#Individually change each position with value wanted
G[2,1] <- 2 
G[3,1] <- 2
G[4,1] <- 2
G[5,1] <- 2
G[1,2] <- 1
G[1,3] <- 1
G[1,4] <- 1
G[1,5] <- 1

G

#Or you can use a loop
Z <- diag(3,5,5) #create desired diagonals
for (i in 2:ncol(Z)) #starting at column 2 to the end of columns in z do...
{
  Z[i,1] <- 2 #each column in the FIRST row is changed to 2
  Z[1,i] <- 1 #each row in the FIRST COLUMN is changed to 1
}
Z


