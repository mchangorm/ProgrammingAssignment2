## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a matrix object that caches the inverse of itself
makeCacheMatrix <- function(x = matrix()) {
  # Initialise the cache as NULL
  m <- NULL

  # function to set the value of the matrix
  set <- function(y)
  {
    x <<- y
    m <<- NULL
  }
  
  # We must get the existing matrix first
  get <- function() x
  
  # this function sets the cached inverse of the matrix
  setinverse <- function(inverse) m <<- inverse

  # this function gets the cached inverse of the matrix
  getinverse <- function() m
  
  # Returns list of all functions
  ## Question : should I camelCase the function names?
  list( set = set, get = get, setinverse = setinverse, getinverse = getinverse )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...)
{
  ## Return a matrix that is the inverse of 'x'
  ## We must call the getinverse function on x
  ## x is of type makeCacheMatrix

  ## Check if the inverse is already cached
  m <- x$getinverse()
  ## if it is not null
  if(!is.null(m))
  {
    ## Return the cached inverse
    message("getting cached data")
    return(m)
  }
  ## Get the matrix from the input object data
  data <- x$get()
  ## Solve calculates the inverse of the matrix
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
