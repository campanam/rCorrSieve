% File src/library/corrsieve/man/read.struct.Rd
\name{read.struct}
\alias{read.struct}
\title{Read.struct}
\description{Reads the K values, Fsts, lnPDs from structure files in the folder specified in the filepath option}
\usage{read.struct(filepath = "./", instruct = FALSE)}
\arguments{
	\item{filepath}{a character string listing the folder's path from the current directory}
	\item{instruct}{when TRUE, data is in INSTRUCT format, else data is in STRUCTURE format}
}
\value{Returns a table listing K values, lnPDs and Fsts for all STRUCTURE results files in the designated folder}
\author{Michael G. Campana <mcampana63@gmail.com>}
\keyword{read}
\keyword{STRUCTURE}
\keyword{Structure}
\keyword{structure}
