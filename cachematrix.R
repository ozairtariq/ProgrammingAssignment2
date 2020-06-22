##The functions that I have written cache the inverse of a matrix

##This function takes the argument matrix, and we assume that the matrix we supply here is invertible. We set the value of the matrix, get the value of the matrix, set the value of the inverse and get the value of the inverse
makeCacheMatrix <- function(x=matrix()) {
  ##Assign NULL to inv
  inv <- NULL
  ##Now set the value of the matrix
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  ##Now get the value of the matrix
  get <- funtcion() {x}
  ##Now set the value of the inverse by assigning it to setInverse
  setInverse <- function(inverse) {inv <<- inverse}
  ##Now we get the value of the inverse
  getInverse <- funstion() {inv}
  ##Now we create a list
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

##The cacheSolve matrix will compute the inverse of the matrix created with the above meantioned function
cacheSolve <- function(x, ...) {
  ##The following line returns a matrix that is the inverse of x and assigns it in inv
  inv <- x$getInverse()
  ##Now we see if the inverse is already calculated or not. It is calculated then we can just skip the computation and get the results from the cache
  if(!is.nul(inv)) {
    message("getting cached data")
    return(inv)
  }
  ##Now we compute the inverse of the matrix so that it gets saved in the cache and this is done by using the solve function
  mat <- x$get()
  inv <- solve(mat, ...)
  ##Now set the value of the inverse using the setInverse function
  x$setInverse(inv)
  inv
}