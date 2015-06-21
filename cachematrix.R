
## This below mentioned Function in used to Caching inverse of matrix,
## The purpose we are doing Caching is it would be helpful to us in fast retrival if the matrix is same

## Function used for assigning matrix,with the help of get and set properties

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
#function used for setting the matrix here our matrix would be argument of y
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)

}


## Function is used for retrival(get) and set the matrix,and inverse is done with the hlpe of Solve function

cacheSolve <- <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    ##solve function is used for inverse matrix
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
