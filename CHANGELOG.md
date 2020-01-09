# rCorrSieve Change Log

Michael G. Campana, 2019  
Smithsonian Conservation Biology Institute  
Contact: campanam@si.edu  

Public domain rCorrSieve GitHub documentation updates (version = 1.6-8) are US government works.  
Unmodified *CorrSieve* source code (versions <= 1.6-8) copyright (c) Michael G. Campana, 2010-2013

### Version 1.6-8 (GitHub 2019)  
Updated documentation and licensing for GitHub hosting  

### Version 1.6-8
CRAN Metadata update  

### Version 1.6-7
CRAN Metadata update  

### Version 1.6-6  
Fixed a bug in calc.delta that prevented calculations when K = 1 was not included.  

### Version 1.6-5  
Added compatibility with INSTRUCT output.  
Fixed bug in which read.struct assumed the presence of *F*<sub>ST</sub> values, even in non-admixture model runs.  
Fixed bug in the *F*<sub>ST</sub> optimisation procedure using ordering of *F*<sub>ST</sub> values.  
Improved algorithm for *F*<sub>ST</sub> optimisation using *Q*-matrix correlations.  

### Version 1.6-4  
Corrected bug which prevented rows-and-columns *Q*-matrix correlations from being calculated when only two runs were completed per *K*.  
Corrected bug which prevented the performance of *Q*-matrix correlations when the number of runs per *K* varied between *K* values or where the minimum tested *K* value was not 1.  
Corrected bug which prevented the calculation of the average maximum correlation when the number of runs for individual *K* values was 0.  

### Version 1.6-3  
Corrected minor bug in testing algorithm for continuous data  
Corrected minor bug in setting default file location  
Documentation corrections  

### Version 1.6-2  
Added 2 methods to optimise the standard deviation calculation.  

### Version 1.6-1  
Translated original Ruby program to R.  

### Versions < 1.6-1  
Only available in Ruby implementation (rubyCorrSieve)  
