% File src/library/corrsieve/man/corr.Qmatrix.Rd
\name{corr.Qmatrix}
\alias{corr.Qmatrix}
\title{Corr.Qmatrix}
\description{Calculates Q matrix correlations from structure files in the folder specified in the filepath option}
\usage{corr.Qmatrix(filepath = "./", instruct = FALSE, rowncol = TRUE, avmax = TRUE, pvalue = FALSE, raw = TRUE, r = 0.99, p = 0.05)}
\arguments{
	\item{filepath}{a character string listing the folder's path from the current directory}
	\item{instruct}{when TRUE, data is in INSTRUCT format, else data is in STRUCTURE format}
	\item{rowncol}{when TRUE, calculates and returns filtered Q matrix correlations using the rows-and-columns criterion}
	\item{avmax}{when TRUE, calculates and returns filtered Q matrix correlations using the average maximum correlation criterion}
	\item{pvalue}{when TRUE, calculates and returns Q matrix correlations using permutation tests}
	\item{raw}{when TRUE, returns the raw unfiltered Q matrix correlations}
	\item{r}{the minimum r value to classify a correlation as significant}
	\item{p}{the maximum p value to classify a correlation as significant. Ignored unless pvalue = TRUE}
}
\value{Returns a S4 object of class QmatrixFilt listing Q matrix correlation results for all STRUCTURE results files in the designated folder}
\author{Michael G. Campana <mcampana63@gmail.com>}
\keyword{Q matrix}
\keyword{Qmatrix}
\keyword{correlate Qmatrix}
\keyword{correlate Q matrix}
\keyword{STRUCTURE}
\keyword{Structure}
\keyword{structure}
