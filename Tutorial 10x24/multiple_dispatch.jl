# function overloading

function mytypeof(x::Int64)
    return "Int64"
end 

function mytypeof(x::Number)
    return "Number"
end 

function mytypeof(x::Any)
    return "not defined yet"
end 

# mutiple dispatch

function mygenericfunction(x)
    println("$x is type: ",
    mytypeof(x))
end 

mygenericfunction(1)

mygenericfunction(π)

mygenericfunction([1, 2, 3])

mygenericfunction("string")

# new data type & new method

struct Dogs
    name::String
end 

function mytypeof(x::Dogs)
    return "Dog"
end 

mydog = Dogs("eggdog")

mygenericfunction(mydog)

# methods()

methods(mytypeof)

methods(mygenericfunction)

methods(+)

