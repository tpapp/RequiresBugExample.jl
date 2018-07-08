# Minimal working example for [Requires.jl#45](https://github.com/MikeInnes/Requires.jl/issues/45)

```julia
julia> using RequiresBugExample

julia> methods(foo)
# 1 method for generic function "foo":
[1] foo(_) in RequiresBugExample at /home/tamas/tmp/julia/RequiresBugExample/src/RequiresBugExample.jl:8

julia> using DataFrames

julia> methods(foo)  # THIS SHOULD HAVE ANOTHER METHOD NOW
# 1 method for generic function "foo":
[1] foo(_) in RequiresBugExample at /home/tamas/tmp/julia/RequiresBugExample/src/RequiresBugExample.jl:8

julia> VERSION
v"0.7.0-beta.204"
```
