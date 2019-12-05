% File src/library/corrsieve/man/rowncolMatrix-method.Rd
\name{rowncolMatrix-method}
\alias{rowncolMatrix}
\title{RowncolMatrix constructor}
\description{Constructor for \code{\link[=rowncolMatrix-class]{rowncolMatrix}} objects}
\usage{rowncolMatrix(K, filtermatrix)}
\arguments{
	\item{K}{A numeric corresponding to the @K slot listing the K value of the runs correlated}
	\item{filtermatrix}{A table corresponding to the @filtermatrix slot listing filtered Q matrix correlations}
}
\value{Returns a S4 object of class rowncolMatrix listing raw Q matrix correlation results}
\author{Michael G. Campana <mcampana63@gmail.com>}
\seealso{\code{\link[=rowncolMatrix-class]{rowncolMatrix}}}
\examples{test <- rowncolMatrix(K = 3, filtermatrix = table(matrix(c("Y","Y","Y",NA,"Y","Y",NA,NA,"Y"),ncol = 3, byrow = TRUE)))}
\keyword{Q matrix}
\keyword{Qmatrix}
\keyword{STRUCTURE}
\keyword{Structure}
\keyword{structure}
