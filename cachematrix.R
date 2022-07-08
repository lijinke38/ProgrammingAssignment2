## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## We first create a variable called m
  m <- NULL
  ## Then we create a function to set the matrix
  set_matrix <- function(y){
    x <<- y
    m <<- NULL
  }
  ## We create a function to return this matrix
  get_matrix <- function()x
  setinverse <- function(inverse)m <<- inverse
  getinverse <- function()m
  ## Finally, we list this functions
  list(set_matrix = set_matrix, get_matrix = get_matrix,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  ## we need to return the inverse value if in the cache
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  
  data <- x&get()
  m <- solve(data, ...)
  # Finally we set the inverse value to the cache
  x$setinverse(m)
  m
}
