## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv = x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  ##mat.data = x$get()
  ##print(mat.data)
  ##inv = solve(mat.data,...)
  n = x$get()
  inv = solve(n)
  x$setinv(inv)
  return (inv)
}
## create a square matrix daniel=matrix(c(2,78,90,45),nrow=2)
##t=makeCacheMatrix(daniel)
##cacheSolve(t)