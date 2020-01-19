## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I have not changed much from the mean example.
## Only instead of mean I have used inv here. and 
## instead of m I am using ii.
makeCacheMatrix <- function(x = matrix()) {
	ii <- NULL
	set <- function(y) {
	    x <<- y
	    ii <<- NULL
	}
	get <- function() x
	setinv <- function(invv) ii <<- invv
	getinv <- function() ii
	list(set = set, get = get,
	     setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function
## I have correspondingly changed the function names here
## to be same as above. In the following function,
## I am using solve(data) to calculate inverse of the 
## matrix
cacheSolve <- function(x, ...) {
	ii <- x$getinv()
	if(!is.null(i)) {
		message("getting cached data")
    		return(i)
	}
 	data <- x$get()
	ii <- solve(data)
	x$setinv(ii)
	ii
	## Return a matrix that is the inverse of 'x'
}
