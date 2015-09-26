# Matrix inversion is a costly computation and there is benefit
# to cache the inverse of a matrix rather than compute it repeatedly. 
## Write a short comment describing this function
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
}

## Write a short comment describing this function
# Following function returns the inverse of the matrix. 
# setinverse function.
# This function assumes that the matrix is always invertible.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)}
 data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv        
}
