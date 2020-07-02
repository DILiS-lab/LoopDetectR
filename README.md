# LoopDetectR: An R package for comprehensive detection of feedback loops in ODE models

## Scope of the package
This package can be used to detect feedback loops (cycles, circuits) 
between species in ODE models. These are paths from one node to itself without 
visiting any other node twice, and they have important regulatory functions. 
Together with the loop length it is also reported whether the loop is a positive 
or a negative feedback loop. An upper limit of the number of feedback loops can 
be entered to limit the runtime (which scales with feedback loop count). Model 
parametrizations and values of the modelled variables are accounted for. Input 
can be the Jacobian matrix of the ODE model or the function definition. 
Graph-based algorithms from igraph are employed for path detection.


## Installation

Install the package from gitlab. Call the following 
commands in an R session. 

	# url where the package is located in gitlab
	loopdetect_url <- "https:/gitlab.com/kabaum/LoopDetectR"
	# Install from gitlab
	devtools::install_git(loopdetect_url)
	# Load package
	library("LoopDetectR")

LoopDetectR will be on CRAN soon and can then be installed within an R session.

	# Download and install
	utils::install.packages("LoopDetectR")
	# Load package
	library("LoopDetectR")


## Workflow and documentation

A detailed workflow document can be found in the *vignettes* folder. Each function is documented. For example, type

	help('find_loops')

within an R session with installed and loaded LoopDetectR to obtain details on the function *find_loops*.


## Licensing
All code is licensed under the GNU GPLv3, LoopDetectR, Copyright (C) 2020  Katharina Baum.

