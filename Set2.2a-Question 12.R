#load lpsolve library
library(lpSolveAPI)

#Represent problem
x <- make.lp(0, 2)
lp.control(x, sense="max")
set.objfn(x, c(8, 5))
add.constraint(x,c(2,1),"<=",400)
add.constraint(x,c(1,0),"<=",150)
add.constraint(x,c(0,1),"<=",200)

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
