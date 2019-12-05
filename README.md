# rCorrSieve
R implementation of CorrSieve

## Licensing  
Original R source code (*CorrSieve* versions <= 1.6-8) copyright (c) Michael G. Campana, 2010-2013 is licensed under the GNU General Public License (version 3 or later). See included LICENSE file for details.  

Public domain updates by Michael G. Campana (2019) to the GitHub documentation (*CorrSieve* version 1.6-8) are United States government works. 

## Introduction
*CorrSieve* is a Ruby and R package that filters *Q* value output from the programs STRUCTURE (Pritchard et al. 2000) and INSTRUCT (Gao et al. 2007) by correlation values. It outputs matrices showing significant correlations between individual runs for each *K*. It can also calculate Δ*K* (Evanno et al. 2005), mean *F*<sub>ST</sub>s and Δ*F*<sub>ST</sub>. These measures help identify meaningful values of *K*.  

## Installation and Compatibility  
rubyCorrSieve is compatible with Windows, Linux, and UNIX (including macOS) operating systems. rubyCorrSieve requires the Ruby interpreter. Installation files are available at www.ruby-lang.org/en/downloads. Install the appropriate interpreter for your operating system.  

Clone this repository to your system. Using a Linux/UNIX command line this can be performed using `git`:  
`git clone https://github.com/campanam/rubyCorrSieve`  

You may need to make the CorrSieve-1.7-0.rb file executable. On Linux/UNIX, enter:  
`chmod +x rubyCorrSieve/*.rb`  

Move the CorrSieve-1.7-0.rb executable and LICENSE file to your chosen execution directory.  

## Usage  
1. Prepare input for *CorrSieve*. *CorrSieve* reads directly from STRUCTURE and INSTRUCT output files, but requires that all files be in a single folder. Do not place other files in this folder. All files should end in ‘_f’ without an extension, e.g:  
TEST_11_f  
TEST_12_f  
TEST_13_f  
TEST_21_f  
TEST_22_f  
TEST_23_f  
