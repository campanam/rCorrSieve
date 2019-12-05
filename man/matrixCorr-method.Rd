% File src/library/corrsieve/man/matrixCorr-method.Rd
\name{matrixCorr-method}
\alias{matrixCorr}
\title{MatrixCorr constructor}
\description{Constructor for \code{\link[=matrixCorr-class]{matrixCorr}} objects}
\usage{matrixCorr(K, Run1, Run2, CorrMatrix, Pvalues = matrix(NA))}
\arguments{
	\item{K}{A numeric corresponding to the @K slot listing the K value of the runs correlated}
	\item{Run1}{A numeric corresponding to the @Run1 slot identifying the first of the runs correlated}
	\item{Run2}{A numeric corresponding to the @Run2 slot identifying the second of the runs correlated}
	\item{CorrMatrix}{A matrix corresponding to the @CorrMatrix slot listing raw Q matrix correlations}
	\item{Pvalues}{A matrix corresponding to the @Pvalues slot listing raw Q matrix correlation significances}
}
\value{Returns a S4 object of class matrixCorr listing raw Q matrix correlation results}
\author{Michael G. Campana <mcampana63@gmail.com>}
\seealso{\code{\link[=matrixCorr-class]{matrixCorr}}}
\examples{test <- matrixCorr(K = 1, Run1 = 2, Run2 = 3, CorrMatrix = matrix(NA))}
\keyword{Q matrix}
\keyword{Qmatrix}
\keyword{STRUCTURE}
\keyword{Structure}
\keyword{structure}
