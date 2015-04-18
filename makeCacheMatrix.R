makeCacheMatrixdqf <- function(x){
  
  m <<- matrix(x, nrow=3)
 print (m)
 print (det(m))
y <- solve(m)
message("y is ")
 y
 ##solve(x) %*% x
##makeCacheMatrix(c(3,1,2,8,7,8,1,2,3))
}