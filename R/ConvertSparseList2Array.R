ConvertSparseList2Array <-
function(OneObject){
    templist=c()
    for(i in 1:length(OneObject)){
        templist[i]=list(as.matrix(OneObject[[i]]))
    }
    return(simplify2array(templist))
}
