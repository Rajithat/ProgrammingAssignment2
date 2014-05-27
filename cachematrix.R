## These functions are used to calculate the Inverse of a matrix and
## store it in cache so that it can be called when required
## MakeCacheMatrix inputs a matrix object. The value of the x is obtainied by x$get() function
## The getInv() function will retrive the Inverse of the matrix from cacheSolve()
## the setInv() functions will set the value in cache and can be retrieved using x$getInv() function
## makeCacheMatrix is passing the matrix objext and passing the values to the cacheSolve function to calculate the Inverse

makeCacheMatrix <- function(x = matrix()) {

	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
		}
	get <- function()x
	setInv <- function(solve) i <<- solve
	getInv <- function() i
	list(set = set, get = get, 
	setInv = setInv,
	getInv = getInv)

}


## cacheSolve function is calculating the inverse of the matrix
## setting the value with the setInv method and returning the value with the getInv method

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
	 i <- x$getInv()
	 if (!is.null(i)){
		message("getting cached data")
		return(i)
		}
	data <-x$get()
	i <- solve(data)
	x$setInv(i)
	i
}
