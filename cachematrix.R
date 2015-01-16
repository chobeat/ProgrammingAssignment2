## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv=NULL
  setinversematrix<-function(inverse) inv<<-inverse
  getinversematrix<-function() if(!is.null(inv))inv else cacheSolve(x)

set <- function(y) {
  x <<- y
  inv <<- NULL
}
get <- function() x

list(set = set, get = get,
     setinversematrix = setinversematrix,
     getinversematrix = getinversematrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        return(solve(x))
}

