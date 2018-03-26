#load lpsolve library
library(lpSolveAPI)

#Represent problem
x <- make.lp(0, 2)
lp.control(x, sense="max")
set.objfn(x, c(40, 35))
add.constraint(x,c(800,600),"<=",1)
add.constraint(x,c(1,0),"<=",550)
add.constraint(x,c(0,1),"<=",580)

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
