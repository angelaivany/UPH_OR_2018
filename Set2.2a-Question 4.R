#load lpsolve library
library(lpSolveAPI)

#Represent problem
x <- make.lp(0, 2)
lp.control(x, sense="max")
set.objfn(x, c(2, 3))
add.constraint(x,c(8,10),"<=",600)
add.constraint(x,c(6,20),"<=",600)
add.constraint(x,c(10,5),"<=",600)

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
