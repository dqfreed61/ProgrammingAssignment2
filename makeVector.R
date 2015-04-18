makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<-null
  }
  get <- function()x
  setmean <-function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}
##m = makeVector(c(-1, -2, 1, 1))
##cachemean(m)
##m =makeVector(c(1,2,3,4,5))
## cachemean(m)