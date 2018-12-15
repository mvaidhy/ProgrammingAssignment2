## Programming Assignment 2
##
## Matrix inversion is usually a costly computation and there may be some benefit to 
## caching the inverse of a matrix rather than computing it repeatedly. The assignment is 
## to write a pair of functions that cache the inverse of a matrix.
##
## The first function creates an object that holds the matrix and a list of four functions
## (get and set matrix, get and set inverse). The operator <<- is used for caching
## The second function, cacheSolve, returns the inverse, using the cache when available


## This function encapsulates a matrix (x) with an
## a cache of its inverse (invx)
makeCacheMatrix <- function(x = matrix()) {
  invx <- NULL
  set <- function(x_inp) {
    x <<- x_inp
    invx <<- NULL
  }
  get <- function() x
  setinv <- function(inv) invx <<- inv
  getinv <- function() invx
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## This function returns the inverse of a matrix contained in
## makeCacheMatrix. If the inverse is present in the cache, that is returned
## else the inverse is computed, copied to the cache, and then returned
## Always recomputes and refreshes cache if parameters are passed for sovle()
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv) & (length(list(...))==0) ) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv  
}
