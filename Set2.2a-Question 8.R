#load lpsolve library
library(lpSolveAPI)

#Represent problem
x <- make.lp(0, 2)
lp.control(x, sense="max")
set.objfn(x, c(1500, 1000))
add.constraint(x,c(1,1),"<=",30)
add.constraint(x,c(1,0),">=",10)
add.constraint(x,c(0,1),">=",10)

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
