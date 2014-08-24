## These functions will give the inverse of a matrix.
## Either by calculation if no inverse has been found
## or by recalling from cache to speed the process up.


## this will set up the functions needed to provide output.

makeCacheMatrix <- function(myMat = matrix())
    {
        inverseOfMatrix <- NULL  ## this sets inverse cache to null
        
        setMatrix <- function()  # this allows a call to set the cache to null
                        {
                            inverseOfMatrix <<- NULL
                            print(inverseOfMatrix)
                        }
        
        getInputMatrix <- function() myMat  ## Gives the input matrix
        
        invertedMatrix <- function() ## calculates inverse if it doesn't exist
                            {
                                if(!is.null(inverseOfMatrix))
                                    {
                                        message("Getting Cached Data.") ## outputs existing inverse
                                        return(inverseOfMatrix)
                                }
                                inverseOfMatrix <<- solve(myMat)
                                print(inverseOfMatrix)
                            }
        
        getInverseMatrix <- function() invertedMatrix
        
        list(getInput = getInputMatrix, setMatrix = setMatrix, invertMatrix = invertedMatrix, getInverse = getInverseMatrix)
        
    }


cacheSolve <- makeCacheMatrix(aMat <- matrix(data = seq(1:4), nrow = 2, ncol = 2))
cacheSolve$setMatrix()
cacheSolve$getInput()
cacheSolve$invertMatrix()
cacheSolve$getInverse()