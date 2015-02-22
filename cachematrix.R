## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  
  cache <- NULL
  
  
  setMatrix <- function(newValue) {
    x <<- newValue
   
    cache <<- NULL
  }
  

  getMatrix <- function() {
    x
  }
  
  exampleMatrix <- matrix(c(1, 0, 5, 2, 1, 6, 3, 4, 0), 3, 3)
  

  
   
  cacheInverse <- function(solve) {
    cache <<- solve
  }
  
  
  getInverse <- function() {
    cache
  }
  
 
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(y, ...) {
  
  inverse <- y$getInverse()
 
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }

  data <- y$getMatrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
  
  # return the inverse
  inverse
}
