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

# Histograms

using CairoMakie 

seconds = 0:0.1:2
measurements = [8.2, 8.4, 6.3, 9.5, 9.1, 10.5, 8.6, 8.2, 10.5, 8.5, 7.2,
        8.8, 9.7, 10.8, 12.5, 11.6, 12.1, 12.1, 15.1, 14.7, 13.1]


lines(seconds, measurements)

measurements2 = rand(z, 21)

lines(seconds, measurements2)

scatter(seconds, measurements)

scatter(seconds, measurements2)

c = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

scatter(seconds, measurements2 + measurements)

lines(seconds, measurements + measurements2 + c)

m = exp(measurements2*c')

lines(seconds, exp.(seconds) .+ 7)

scatter(seconds, measurements)
lines!(seconds, exp.(seconds) .+ 7)
current_figure()

