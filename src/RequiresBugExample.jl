__precompile__()
module RequiresBugExample

export foo

using Requires

foo(_) = :fallback

@require DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0" begin
    foo(::DataFrames.DataFrame) = :uuid
end

end
