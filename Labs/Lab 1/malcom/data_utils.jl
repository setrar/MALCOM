using Serialization
using FileIO # For file operations
using Images # For image processing
using LinearAlgebra # For operations like concatenation

function load_CIFAR_batch(filename)
    # Assuming data is stored in a Julia-readable format, possibly after conversion
    datadict = load(filename, format="Matlab") # `load` from FileIO or custom function based on file format
    X = reshape(datadict["data"], (10000, 3, 32, 32))
    X = permutedims(X, [1, 3, 4, 2]) # equivalent to Python's transpose
    Y = Vector{Int}(datadict["labels"])
    return float.(X), Y
end

function load_CIFAR10(ROOT)
    xs = []
    ys = []
    for b in 1:5
        f = joinpath(ROOT, "data_batch_$b")
        X, Y = load_CIFAR_batch(f)
        push!(xs, X)
        push!(ys, Y)
    end
    Xtr = vcat(xs...)
    Ytr = vcat(ys...)
    Xte, Yte = load_CIFAR_batch(joinpath(ROOT, "test_batch"))
    return Xtr, Ytr, Xte, Yte
end

