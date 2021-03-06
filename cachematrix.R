## Followng function compute and cache the inverse of a matrix


## This function creates "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    
    inv = NULL
    set = function(y){
        
        x <<- y
        inv <<- NULL
        
    }
    
    get = function() x
    setinv = function(inverse) inv <<- inverse
    getinv = function()  inv
    list(set=set, get=get , setinv = setinv , getinv = getinv)
    


}


## This function will cache the matrix if it was previously solved otherwise calculate the value of new one

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        inv = x$getinv()
        
        if(!is.null(inv)) {
            
            message("getting cached data")
            return(inv)
            
            
            
            
            
        }
        mat.data = x$get()
        inv =  solve(mat.data, ...)
        x$setinv(inv)
        return(inv)





}
