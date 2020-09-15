## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix()){
  inv <- NULL                             #initialising inverse as Null
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}                   # function to get matrix x
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}    # function to get inverse of matrix x
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## To get the cached data


        ## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...){           # gets cached data
  inv <- x$getInverse()                   #checks whether inverse is NULL
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)                           # returns inverse value
  }
  mat <- x$get()
  inv <- solve(mat, ...)                  #calculates inverse value
  x$setInverse(inv)
  inv                                     # returns a matrix that is inverse of x
}

