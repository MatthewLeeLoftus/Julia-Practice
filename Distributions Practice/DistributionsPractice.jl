# Distributions Practice

using Distributions

using Random, Distributions

Random.seed!(123) 

d = Normal()

mean(d)

x = rand(d, 100)

quantile.(Normal(), [.5, .95])

cdf.(Normal(), [.5, .95])

pdf.(Normal(), [.5, .95])

y = rand(Normal(1,2), 100)

mean(y)

Binomial(100, 0.6)

Cauchy(1000, 15)

Multinomial(10, 2)

Wishart(1, 2)

fieldnames(Wishart)

fit(Normal, x)

fit(Normal, y)

fieldnames(Poisson)

z = Poisson(0.5)

rand(z, 100)

f = Poisson()

params(f)

mean(f)

std(f)

# Messing around with Distributions


