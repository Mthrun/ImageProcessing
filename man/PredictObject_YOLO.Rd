\name{PredictObject_YOLO}
\alias{PredictObject_YOLO}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Predicts an image object using YOLO
}
\description{
Image is internally saved in Outdirectory and then loaded back again with pediction of YOLO.
}
\usage{
PredictObject_YOLO(Filename, InDirectory, Darknet_Model, Threshold = 0.19, OutDirectory = getwd(), PlotIt = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Filename}{
name of the input image to be predicted with .jpg or .png
}
  \item{InDirectory}{
directory of the image to be preddicted
}
  \item{Darknet_Model}{
trained neuronale network to be used, see darknet docu, if not given, per default YOLO v1 is used
}
  \item{Threshold}{
threshold for YOLO, se my Rmarkdown script
}
  \item{OutDirectory}{
directpry in which die prediction.png is temporary saved and then loaded again
}
  \item{PlotIt}{
should the image be plottet?
}
}
\details{
shrtcut function for the darknet packge
}
\value{
an object of class 'cimg', see imager package for details
}
\references{
see rmarkdown script for further links
}
\author{
Michael Thrun
}

\examples{
##todo
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
