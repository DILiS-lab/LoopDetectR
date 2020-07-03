## Test environments
* local OS X install, R 4.0.2
* win-builder (release)

## R CMD check results
There were no ERRORs or WARNINGs. 

There was 1 NOTE (local OS R 4.0.2)
* checking CRAN incoming feasibility ... NOTE
Maintainer: ‘Katharina Baum <katharina.baum@hpi.de>’

New submission 
This is correct, it is a new submission.

There was 1 NOTE (win-builder release, R 4.0.2)
* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Katharina Baum <katharina.baum@hpi.de>'

New submission

Possibly mis-spelled words in DESCRIPTION:
  igraph (8:592)


## Result for R-devel on Mac OS
Building the packages was not possible because packages from the Imports field are not available in R-devel: 

* installing the package to build vignettes
      -----------------------------------
ERROR: dependencies ‘igraph’, ‘numDeriv’ are not available for package ‘LoopDetectR’


## Downstream dependencies - none