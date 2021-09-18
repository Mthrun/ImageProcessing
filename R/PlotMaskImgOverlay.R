PlotMaskImgOverlay <-
function(Img, Mask, TransparencyFactor = 0.6) {
    dims = dim(Mask)
    third = dims[3]
    #Make Sure that given Mask is four dim array
    if (is.na(third)) {
        MaskArray = abind::abind(Mask, Mask, Mask, Mask)
    }
    if (third == 1) {
        MaskArray = abind::abind(Mask[, , 1], Mask[, , 1], Mask[, , 1], Mask[, , 1])
    }
    if (third == 2) {
        MaskArray = abind::abind(Mask, Mask[, , 1], Mask[, , 1])
    }
    if (third == 3) {
        MaskArray = abind::abind(Mask, Mask[, , 1])
    }
    if (third > 4) {
        MaskArray = Mask[, , 1:4]
    }
    MaskArray[, , 3] = 0.2
    MaskArray[which(MaskArray == 1, arr.ind = T)] = TransparencyFactor
    plot.new()
    rasterImage(Img, 0, 0, 1, 1)
    rasterImage(MaskArray,   0, 0, 1, 1)
}
