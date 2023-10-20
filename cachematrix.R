## Caching the Inverse of a Matrix

## Writing the functions to create "matrix" object that can cache its inverse

        ## Creating a special "matrix" object first

        makeCacheMatrix <- function(x = matrix()) {
                inv <- NULL
                set <- function (matrix) {
                m <<- matrix
                inv <<- NULL
                }

        get <- function () m
        setInverse <- function(inverse) {
        inv <<- inverse
        }
        getInverse <- function() inv
        list(set = set, 
             get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
        }
        


## cacheSolve is a function that can retrieve the inverse from the cache if the inverse has been calculated previously, like in this case

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()

        ## Returning the inverse if its already set
        if (!is.null(inv) ) {
                message("getting cached data")
                return(inv)
}
        data <-x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv
}
