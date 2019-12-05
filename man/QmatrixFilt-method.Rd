% File src/library/corrsieve/man/QmatrixFilt-method.Rd
\name{QmatrixFilt-method}
\alias{QmatrixFilt}
\title{QmatrixFilt constructor}
\description{Constructor for \code{\link[=QmatrixFilt-class]{QmatrixFilt}} objects}
\usage{QmatrixFilt(rowncol = list(""), avmaxcorr = as.table(matrix(NA)), rawcorr = list(""))}
\arguments{
	\item{rowncol}{A list corresponding to the @rowncol slot listing filtered Q matrix correlations by the rows-and-columns method}
	\item{avmaxcorr}{A table corresponding to the @avmaxcorr slot listing filtered Q matrix correlations by the rows-and-columns method}
	\item{rawcorr}{A list corresponding to the @rawcorr slot listing raw Q matrix correlations}
}
\value{Returns a S4 object of class QmatrixFilt listing Q matrix correlation results}
\author{Michael G. Campana <mcampana63@gmail.com>}
\seealso{\code{\link[=QmatrixFilt-class]{QmatrixFilt}}}
\examples{test <- QmatrixFilt(rowncol = list(c("a", "b", "c")))
test@rowncol}
\keyword{Q matrix}
\keyword{Qmatrix}
\keyword{STRUCTURE}
\keyword{Structure}
\keyword{structure}
