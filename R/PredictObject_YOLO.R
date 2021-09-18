PredictObject_YOLO <-
function(Filename,InDirectory,Darknet_Model,Threshold=0.19,
                            OutDirectory=getwd(),PlotIt=FALSE){
    if(!requireNamespace("image.darknet")){
        stop("Please Install image.darknet")
    }#end error catch 1
    
    if(missing(Darknet_Model)){
        Darknet_Model <- image.darknet::image_darknet_model(type = 'detect', 
                                                            model = "tiny-yolo-voc.cfg", 
                                                            weights =
                                                                system.file(package="image.darknet", "models", "tiny-yolo-voc.weights"), 
                                                            labels =
                                                                system.file(package="image.darknet", "include", "darknet", "data", "voc.names"))
    }#end if missing(Darknet_Model)
    curpath=getwd()
    file=normalizePath(paste0(InDirectory,Filename))
    if(!file.exists(file)){
        txt=paste0("PredictObject_YOLO: file does not exist:",file)
        warning(txt)
        return(txt)
    } #end error catch 2
    setwd(OutDirectory)
    notfilled <- image.darknet::image_darknet_detect(file = file, 
                                                     object = Darknet_Model,
                                                     threshold = Threshold)
    setwd(curpath)
    filepred=normalizePath(paste0(OutDirectory,"/predictions.png"))
    print(filepred)
    img_cur=imager::load.image(filepred)
    
    if(isTRUE(PlotIt)){
        plot(img_cur)
    }
    return(PredictedImage=img_cur)
}
