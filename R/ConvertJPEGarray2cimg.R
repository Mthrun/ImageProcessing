ConvertJPEGarray2cimg <-
function(JPEGarray){
  V=dim(JPEGarray)
  img01_cobverted=imager::as.cimg(array(dim = c(V[1],V[2],V[3])))
  img01_temp=imager::as.cimg(JPEGarray)
  for(z in 1:3){
    img01_cobverted[,,z]=t(img01_temp[,,z])
  }
  return(img01_cobverted)
}
