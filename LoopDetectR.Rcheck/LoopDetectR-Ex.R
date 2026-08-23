pkgname <- "LoopDetectR"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
base::assign(".ExTimings", "LoopDetectR-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('LoopDetectR')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("compare_loop_list")
### * compare_loop_list

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: compare_loop_list
### Title: Compare two loop lists
### Aliases: compare_loop_list

### ** Examples

#sample Jacobian matrix of a system with 4 variables
jac_matrix <- rbind(c(-1,0,0,-1),c(1,-1,0,1),c(0,1,-1,0),c(0,0,1,-1))
#find the feedback loops of the system
loop_list <- find_loops(jac_matrix,10)
#a slightly different Jacobian matrix of the system with 4 variables
jac_matrix_alt <- rbind(c(-1,0,0,1),c(1,-1,0,-1),c(0,1,-1,0),c(0,0,1,-1))
#find the feedback loops of the system
loop_list_alt <- find_loops(jac_matrix_alt,10)
#compare the loop lists
comp_loop_list <- compare_loop_list(loop_list,loop_list_alt)
#loops that switch sign
comp_loop_list[['ind_a_switch']]




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("compare_loop_list", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("find_edge")
### * find_edge

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: find_edge
### Title: Detecting loops with a certain edge
### Aliases: find_edge

### ** Examples

#sample Jacobian matrix of a system with 4 variables
jac_matrix <- rbind(c(-1,0,0,-1),c(1,-1,0,1),c(0,1,-1,0),c(0,0,1,-1))
#find the feedback loops of the system
loop_list <- find_loops(jac_matrix,10)
#find the loops containing the regulation from variable 3 to variable 4
inds_3_to_4 <- find_edge(loop_list,3,4)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("find_edge", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("find_loops")
### * find_loops

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: find_loops
### Title: Loop detection in a matrix
### Aliases: find_loops

### ** Examples

#sample Jacobian matrix of a system with 4 variables
jac_matrix <- rbind(c(-1,0,0,-1),c(1,-1,0,1),c(0,1,-1,0),c(0,0,1,-1))
#find the first 5 feedback loops of the system
loop_list <- find_loops(jac_matrix,5)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("find_loops", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("find_loops_noscc")
### * find_loops_noscc

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: find_loops_noscc
### Title: Loop detection in a matrix
### Aliases: find_loops_noscc

### ** Examples

#sample Jacobian matrix of a system with 4 variables
jac_matrix <- rbind(c(-1,0,0,-1),c(1,-1,0,1),c(0,1,-1,0),c(0,0,1,-1))
#find the first 5 feedback loops of the system
loop_list <- find_loops_noscc(jac_matrix,5)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("find_loops_noscc", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("find_loops_vset")
### * find_loops_vset

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: find_loops_vset
### Title: Loop detection for an ODE model at multiple sets of variables
### Aliases: find_loops_vset

### ** Examples

#default call to determine loops from an ODE model given by a function
#read in example functions
data("func_POSm4")
#the loaded function func_POSm4 takes arguments t, x, klin, knonlin
res_tab <- find_loops_vset(func_POSm4,vset=list(c(1,1,1,1)),t=1,
klin=c(1,2,0.5,1,2,0.1,3,2,3),knonlin=c(1,2))
#computed loop list:
res_tab$loop_rep[[1]] #or res_tab[[1]][[1]]

#determine loops from an ODE model over the course of a solution
#read in the example function defining the bacterial cell cycle
data("func_li08")
#kinetic parameter values are defined within the function
#read in a set of variable values (the solution of func_li08 with events)
data("li08_solution")
#transform the solution (columns: variables) to the correct list format
#and remove the time (first column)
li08_sol_list <- as.list(as.data.frame(t(li08_solution[,-1])))
res_tab <- find_loops_vset(func_li08,vset=li08_sol_list,t=1,
compute_full_list=FALSE)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("find_loops_vset", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("loop_summary")
### * loop_summary

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: loop_summary
### Title: Summary of a loop list
### Aliases: loop_summary

### ** Examples

#sample Jacobian matrix of a system with 4 variables
jac_matrix <- rbind(c(-1,0,0,-1),c(1,-1,0,1),c(0,1,-1,0),c(0,0,1,-1))
#find the feedback loops of the system
loop_list <- find_loops(jac_matrix,10)
#loop summary table
loop_sum_tab <- loop_summary(loop_list)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("loop_summary", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("sort_loop_index")
### * sort_loop_index

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: sort_loop_index
### Title: Sort loop indices
### Aliases: sort_loop_index

### ** Examples

#sample Jacobian matrix of a system with 4 variables
jac_matrix <- rbind(c(-1,0,0,-1),c(1,-1,0,1),c(0,1,-1,0),c(0,0,1,-1))
#find the feedback loops of the system
loop_list <- find_loops(jac_matrix,10)
#sort the loop indices to start with the smallest
sorted_loop_list <- sort_loop_index(loop_list)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("sort_loop_index", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
