\name{PlotMaskImgOverlay}
\alias{PlotMaskImgOverlay}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot an Overlay of a Mask with an Img
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
PlotMaskImgOverlay(Img, Mask, TransparencyFactor = 0.6)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Img}{
image as [1:n,1:d,1:3] array of numerical entries, first two dimensions have the height and width of image third dimension has the red, blue and green values.
}
  \item{Mask}{
Mask as an [1:n,1:d,1:3] array, if sparse matrices are loeaded, please use the conversition function
}
  \item{TransparencyFactor}{
how much color should be overleayed in the image, values between zero and 1
}
}
\details{
please see the rmarkdwon examples
}
\value{
none, a native plot is shown
}

\author{
Michael Thrun
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

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
