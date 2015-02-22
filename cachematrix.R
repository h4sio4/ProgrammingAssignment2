## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
 set <- function(y) {
   x <<- y # set the value of the matrix
   m <<- NULL # set the old inverse of matrix to null in order to find the inverse
   of a new matrix
 }
 get <- function() x # get the value of the matrix
 setinverse <- function(inv) m <<- inv # set the value of the inverse of matrix
 getinverse <- function() m # get the value of the inverse of matrix
 matrix (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if (!is.null(m)) {
    message ("getting cached data")
    return (m)
        ## Return a matrix that is the inverse of 'x'
}
data <- x$get()
m <- inv(data, ...)
x$setinverse(m)
m
}