# LoopDetectR: An R package for comprehensive detection of feedback loops in ODE models

<p align="center">
  <a href="https://github.com/DILiS-lab/loopdetect">
    <img src="https://img.shields.io/badge/Python-implementation-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python implementation">
  </a>
  <a href="https://github.com/DILiS-lab/LoopDetectR">
    <img src="https://img.shields.io/badge/R-implementation-276DC3?style=for-the-badge&logo=r&logoColor=white" alt="R implementation">
  </a>
  <a href="https://github.com/DILiS-lab/loopdetect_for_matlab">
    <img src="https://img.shields.io/badge/MATLAB-implementation-orange?style=for-the-badge&logo=mathworks&logoColor=white" alt="MATLAB implementation">
  </a>
</p>

## Scope of the package
This package can be used to detect feedback loops (cycles, circuits) 
between species in ordinary differential equation (ODE) models. These are paths from one node to itself without 
visiting any other node twice, and they have important regulatory functions. 
Together with the loop length it is also reported whether the loop is a positive 
or a negative feedback loop. An upper limit of the number of feedback loops can 
be entered to limit the runtime (which scales with feedback loop count). Model 
parametrizations and values of the modelled variables are accounted for. Input 
can be the Jacobian matrix of the ODE model or the function definition. 
Graph-based algorithms from igraph are employed for path detection.


## Installation

LoopDetectR is on CRAN [link](https://cran.r-project.org/web/packages/LoopDetectR/index.html) and can be installed within an R session.

	# Download and install
	utils::install.packages("LoopDetectR")
	# Load package
	library("LoopDetectR")

You can also install the development version from GitHub. Call the following 
commands in an R session.

	# install.packages("remotes")
	remotes::install_github(
		"DILiS-lab/LoopDetectR",
		build_manual = TRUE,
		build_vignettes = TRUE
	)
	
	library(LoopDetectR)

## Workflow and documentation

A detailed workflow document can be found in the *vignettes* folder and as CRAN [vignette](https://cran.r-project.org/web/packages/LoopDetectR/vignettes/workflow_LoopDetectR.html). Each function is documented. For example, type

	help('find_loops')

within an R session with installed and loaded LoopDetectR to obtain details on the function `find_loops`. For an overview of the functions, download the [reference manual](https://cran.r-project.org/web/packages/LoopDetectR/LoopDetectR.pdf).

## Licensing
All code is licensed under the GNU GPLv3, LoopDetectR, Copyright (C) 2020  Katharina Baum.

