## 19-Apr-2015 DQF
## makeCacheMatrix store a square matrix in memory as  a R special matrix so the result is 
## available for use in other R modules
## sample commands to execute are below
## create a square matrix daniel=matrix(c(2,78,90,45),nrow=2)
##t=makeCacheMatrix(daniel)
##cacheSolve(t)

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- null
}
get <- function()x
setinverse <- function (inverse) inv <<- inverse
getinverse <- function () inv
list(set=set, get=get, setinv=setinverse, getinv=getinverse)
}

## 19-Apr-2015 DQF 
## cacheSolve takes in a square matrix and creates the inverse using solve.
## if the inverse matrix exists the code displays a message indicating the cache version is being used

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv = x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  n = x$get()
  inv = solve(n)
  x$setinv(inv)
  return (inv)
}
