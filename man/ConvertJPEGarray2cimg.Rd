\name{ConvertJPEGarray2cimg}
\alias{ConvertJPEGarray2cimg}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Converts an arrays loaded with JPEG to an cimg object of imager
}
\description{
Depending on the package the definition of axis origin varies. This function concerts image object consistently
}
\usage{
ConvertJPEGarray2cimg(JPEGarray)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{JPEGarray}{
[1:n,1:d,1:3] array of numerical entries, first two dimensions have the height and width of image third dimension has the red, blue and green values.
}
}
\details{
converts to objects used in imager package
}
\value{
an object of class 'cimg', see imager package for details
}
\author{
Michael Thrun
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
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
