## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
##objectifies and stores matrix function for inverse cache operation

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
##identifies and computes the inverse cache solution for the aformentioned matrix object

makeCacheMatrix <- function(x = matrix()) {
		inv <- NULL
		set <- function(y) {
		x <<- y
                inv <<- NULL
        }
	get<- function() x
        setmatrix = function(inverse) inv <<- inverse 
        getmatrix = function() inv
        list(setmatrix=setmatrix, getmatrix=getmatrix, setinv=setinv, getinv=getinv)
}
        ## sets, gets, and lists vector matrix and inversion values.
        
        
cacheSolve <- function(x, ...) {
	inv <- x$getinv()
	if (!is.null(inv)){ 
	 message("getting cached data")
                return(inv)
        }
	mat.data = x$get()
        inv = solve(mat.data, ...)
		x$setinv(inv)
        
        return(inv)
}
## if/then inverse calculation directs to retrieve data from cache and otherwise calc from inverse which produces inverse value.
