% File src/library/corrsieve/man/matrixCorr.Rd
\name{matrixCorr}
\alias{matrixCorr-class}
\title{MatrixCorr}
\description{The S4 class matrixCorr lists raw, unfiltered Q matrices between Structure runs}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("matrixCorr", ...)}.
}
\section{Slots}{
  \describe{
	\item{K}{A numeric listing the K value of the runs correlated}
	\item{Run1}{A numeric identifying the first of the runs correlated}
	\item{Run2}{A numeric identifying the second of the runs correlated}
	\item{CorrMatrix}{A matrix listing raw Q matrix correlations}
	\item{Pvalues}{A matrix listing raw Q matrix correlation significances}
}}
\author{Michael G. Campana <mcampana63@gmail.com>}
\seealso{
	\code{\link{matrixCorr}} 
}
\keyword{Q matrix}
\keyword{Qmatrix}
\keyword{STRUCTURE}
\keyword{Structure}
\keyword{structure}
