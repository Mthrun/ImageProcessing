ConvertArray2SparseList <-
function(Array){
  SparseList=c()

    x=Array
    ThirdDim=c()
    if(!is.na(dim(x)[3])){
      for(j in 1:dim(x)[3]){
        ThirdDim[j]=list(Matrix::Matrix(x[,,j], sparse=TRUE))
      }
    }else{
      ThirdDim[1]=list(Matrix::Matrix(x, sparse=TRUE))
    }
    SparseList[i]=list(ThirdDim)
  

  
  return(SparseList)
  
}
