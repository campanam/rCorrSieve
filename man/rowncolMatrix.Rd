% File src/library/corrsieve/man/rowncolMatrix.Rd
\name{rowncolMatrix}
\alias{rowncolMatrix-class}
\title{RowncolMatrix}
\description{The S4 class RowncolMatrix lists filtered Q matrix output by the row-and-column method}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("rowncolMatrix", ...)}.
}
\section{Slots}{
  \describe{
	\item{K}{A numeric listing the K value of the runs correlated}
	\item{filterMatrix}{A table listing filtered Q matrix correlations by the row-and-column method}
}}
\author{Michael G. Campana <mcampana63@gmail.com>}
\seealso{
	\code{\link{rowncolMatrix}}
}
\keyword{Q matrix}
\keyword{Qmatrix}
\keyword{STRUCTURE}
\keyword{Structure}
\keyword{structure}
