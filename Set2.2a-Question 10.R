#load lpsolve library
library(lpSolveAPI)

#Represent problem
x <- make.lp(0, 2)
lp.control(x, sense="max")
set.objfn(x, c(1, 1.35))
add.constraint(x,c(0.2,0.4),"<=",60)
add.constraint(x,c(1,0),"<=",200)
add.constraint(x,c(0,1),"<=",120)

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
