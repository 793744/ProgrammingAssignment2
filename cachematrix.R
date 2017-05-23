## Makes a cache matrix via the same algorithm as in the example

makeCacheMatrix <- function(x = matrix())
{
	X <- NULL
	set <- function(y)
	{
		x <<- y
		X <<- NULL
	}
	get <- function() x
	setInverse <- function(i) X <<- i
	getInverse <- function() X
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Caches the solution via the same algorithm as the example

cacheSolve <- function(x, ...)
{
	i <- x$getInverse()
	if (!is.null(i))
	{
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setInverse(i)
	i
}