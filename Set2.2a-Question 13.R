#load lpsolve library
library(lpSolveAPI)

#Represent problem
x <- make.lp(0, 2)
lp.control(x, sense="max")
set.objfn(x, c(1, 25))
add.constraint(x,c(15,300),"<=",10000)
add.constraint(x,c(1,0),"<=",400)
add.constraint(x,c(-1,2),"<=",0)

#solve
solve(x)

#max profit
get.objective(x)
#get the solution
get.variables(x)
get.constraints(x)
print(x)

#draw graph
plot(x)
