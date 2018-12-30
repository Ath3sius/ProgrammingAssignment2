## Put comments here that give an overall description of what your
## functions do

## Creates a matrix to be held in a cache

makeCacheMatrix <- function(x = matrix()) {
  mtx <- NULL
  
  set <- function(y) {
    x <<- y
    mtx <<- NULL
  }
  get <- function() x
  setMtx <- function(n) mtx <<- n
  getMtx <- function() mtx
  list(set = set, get = get, setMtx = setMtx, getMtx = getMtx)
}


## Finds the inverse of the matrix computed by makeCacheMatrix

cacheSolve <- function(x, ...) {
  mtx <- x$getMtx()
  if (!is.null(mtx)) {
    message("Getting the matrix")
    return(mtx)
  }
  
  solveThis <- x$get()
  m <- solve(solveThis)
  x$setMtx(m)
  x$getMtx()
  
  ## Return a matrix that is the inverse of 'x'
}