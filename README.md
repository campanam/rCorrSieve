# rCorrSieve  
Michael G. Campana  
Smithsonian's National Zoo & Conservation Biology Institute  

R implementation of CorrSieve  

## Licensing  
Original R source code (*CorrSieve* versions <= 1.6-8) copyright (c) Michael G. Campana, 2010-2013 is licensed under the GNU General Public License (version 3 or later). See included LICENSE file for details.  

Public domain updates by Michael G. Campana (2019, 2022) to the GitHub documentation (*CorrSieve* versions >= 1.6-8) and package metadata (*CorrSieve* version 1.6-9) are United States government works.  

## Introduction
*CorrSieve* is a Ruby and R package that filters *Q* value output from the programs STRUCTURE (Pritchard et al. 2000) and INSTRUCT (Gao et al. 2007) by correlation values. It outputs matrices showing significant correlations between individual runs for each *K*. It can also calculate Δ*K* (Evanno et al. 2005), mean *F*<sub>ST</sub>s and Δ*F*<sub>ST</sub>. These measures help identify meaningful values of *K*.  

## Installation and Compatibility  
rCorrSieve is compatible with Windows, Linux, and UNIX (including macOS) operating systems. It requires the R statistical environment available from the Comprehensive R Archive Network (CRAN: http://cran.r-project.org). Install the appropriate environment for your operating system.  

Load the R environment.  

The latest stable rCorrSieve version is available from CRAN. Install this version using:  
`install.packages('corrsieve')`  

The development rCorrSieve version is hosted here on GitHub. Installation of this version requires the `remotes` package:  
`install.packages('remotes')`  
`library(remotes)`  
`install_github('campanam/rCorrSieve')`  

## Usage  
1. Prepare input for *CorrSieve*. *CorrSieve* reads directly from STRUCTURE and INSTRUCT output files, but requires that all files be in a single folder. Do not place other files in this folder. All files should end in ‘_f’ without an extension, e.g:  
TEST_11_f  
TEST_12_f  
TEST_13_f  
TEST_21_f  
TEST_22_f  
TEST_23_f  

2. Load the package:  
`library(corrsieve)`  

3. The command to read a folder of STRUCTURE output for summarising *F*<sub>ST</sub> and ln P(D) and calculating Δ*K* and Δ*F*<sub>ST</sub> is `read.struct(filepath = “./”, instruct = FALSE)` The file path default is the current directory. The default data file format is the STRUCTURE format. Setting `instruct` to TRUE indicates the presence of INSTRUCT data. This will create a table of data in the R workspace. For example, the command:  
`data <- read.struct(“C:/Results/”)`  
will create the table ‘data’ containing all the STRUCTURE output in the folder `C:/Results/`.  

4. To summarise the *F*<sub>ST</sub> and ln P(D) data from the data read with `read.struct`, the commands `summarise.Fst` and `summarise.lnPD` are used respectively. For example, using the data we read in previously, the commands:  
`lnpd <- summarise.lnPD(data)`  
`fst <- summarise.Fst(data)`  
will create the tables ‘lnpd’ and ‘fst’ containing the summarised ln P(D) and *F*<sub>ST</sub> data respectively.  

Since the assigned clusters will not necessarily be in the same order for each STRUCTURE/ INSTRUCT run, `summarise.Fst` has a second argument `stdevopt` to best order the *F*<sub>ST</sub> data. Setting `stdevopt = 1` (the default) uses no optimisation procedure, setting `stdevopt = 2` orders the *F*<sub>ST</sub> data by value, whilst setting `stdevopt = 3` will use correlation matrices between runs to determine the optimal *F*<sub>ST</sub> data ordering. Using the correlation matrices will prompt the user to enter the file path for the original files again.  

*NOTE:* F<sub>ST</sub> *statistics are only available from STRUCTURE data generated under the admixture model. Output generated in INSTRUCT (even under the admixture model) or under other STRUCTURE models will cause an error.*  

5. To calculate, Δ*K* and Δ*F*<sub>ST</sub> from the summarised ln P(D) and *F*<sub>ST</sub> data, the command `calc.delta(input, Fst = FALSE)` is used. The default is ln P(D) data. The argument `Fst` determines whether the input data is *F*<sub>ST</sub> or ln P(D) data. For example, the commands:  
`deltaK <- calc.delta(lnpd)`  
`deltaF <- calc.delta(fst, Fst= TRUE)`  
will create the tables ‘deltaK’ and ‘deltaF’ containing the calculated Δ*K* and Δ*F*<sub>ST</sub> statistics as well as the intermediary statistics L′(*K*), L′′(*K*), F′(*K*) and F′′(*K*) used to calculate Δ*K* and Δ*FST* (Campana et al. 2011; Evanno et al. 2005). These statistics are denoted by LprK, LdprK, FprK, and FdprK respectively.  

6. To perform *Q*-matrix correlations, the command`corr.Qmatrix(filepath = "./", rowncol = TRUE, avmax = TRUE, pvalue = FALSE, raw = TRUE, r = 0.99, p = 0.05)` is used. The file path default is the current directory. The default data file format is the STRUCTURE format. Setting `instruct` to TRUE indicates the presence of INSTRUCT data. The arguments `rowncol`, `avmax`, and `pvalue` determine whether the rows-and-columns criterion (Campana et al. 2011), the average max correlation criterion (Cockram et al. 2008), permutation tests are used. The argument `raw` determines whether unfiltered *Q* matrix correlation matrices are outputted. The arguments `r` and `p` determine the minimum Pearson coefficient and the maximum *p* values to be considered a significant correlation. The data generated by `corr.Qmatrix` are entered into an S4 object of class ‘QmatrixFilt’. For example:  
`Qmat <- corr.Qmatrix(“C:/Results/”, pvalue = TRUE)`  
will generate an S4 object named ‘Qmat’ in which the STRUCTURE output in the folder `C:/Results/` are correlated and filtered both by the average maximum correlation and the rows-and-columns criteria. Permutation tests are also used. The unfiltered correlation matrices are outputted. The minimum Pearson coefficient is 0.99 and the maximum *p* value is 0.05.

7. To view, the various correlation matrix outputs, the commands `@rowncol`, `@avmaxcorr` and `@rawcorr` are used. For example:
`Qmat@rowncol` will show the output of the rows-and-columns criterion  
`Qmat@avmaxcorr` will show the output of the average maximum correlation criterion  
`Qmat@rawcorr` will show the unfiltered correlation matrices.  

## Bugs and Contributing
Please report all bugs (and any suggestions for improvements) to Michael G. Campana (campanam@si.edu).  

## CorrSieve Citation  
Campana et al. 2011. *CorrSieve*: software for summarizing and evaluating Structure output. Mol. Ecol. Resour. 11:349-352. https://onlinelibrary.wiley.com/doi/abs/10.1111/j.1755-0998.2010.02917.x  

## Acknowledgments
Rita Cannas helpfully checked the method for calculating Δ*K*. Dent Earl , Elena López, and Michał Żmihorski identified bugs in the software.  

## References
Campana et al. 2011. *CorrSieve*: software for summarizing and evaluating Structure output. Mol. Ecol. Resour. 11:349-352. https://onlinelibrary.wiley.com/doi/abs/10.1111/j.1755-0998.2010.02917.x  

Cockram et al. 2008. Association mapping of partitioning loci in barley. BMC Genet. 9: 16–29. https://bmcgenet.biomedcentral.com/articles/10.1186/1471-2156-9-16.  

Evanno et al. 2005. Detecting the number of clusters of individuals using the software STRUCTURE: a simulation study. Mol. Ecol. 14: 2611-2620. https://onlinelibrary.wiley.com/doi/abs/10.1111/j.1365-294X.2005.02553.x.  

Gao et al. 2007. A Markov Chain Monte Carlo approach for joint inference of population structure and inbreeding rates from multilocus genotype data. Genetics. 176: 1635-1651. https://www.genetics.org/content/176/3/1635.  

Hester et al. 2019. remotes: R package installation from remote repositories, including 'GitHub'. R package version 2.1.0. https://CRAN.R-project.org/package=remotes.  

Pritchard et al. 2000. Inference of population structure using multilocus genotype data. Genetics. 155: 945–49. https://www.genetics.org/content/155/2/945.  
