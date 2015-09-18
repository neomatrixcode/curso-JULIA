
Pkg.add("Interact")
using Interact

Pkg.add("Gadfly")
using Gadfly

@manipulate for ϕ=0:π/16:4π, f=[:sin => sin, :cos => cos]
    plot(θ -> f(θ + ϕ), 0, 25)
end


