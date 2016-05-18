## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	solution <- NULL

	set <- function(mat){
		x <<- mat
		solution <<- NULL
	}

	get <- function() x
	setsolution <- function(sol) solution <<-sol
	getsolution <- function() solution
	list(	set=set, 
		get=get, 
		setsolution=setsolution,
		getsolution=getsolution)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	solution <- x$getsolution()
	if(!is.null(solution)){
		message("getting cached data")
		return(solution)
	}
	data <- x$get()
	solution <- solve(data, ...)
	x$setsolution(solution)
	solution
	
}

# makeCacheMatrix(matrix(1:9, nrow=3, ncol=3))


