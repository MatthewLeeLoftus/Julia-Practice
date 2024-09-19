# struct

# declare struct 

mutable struct Dog
    name::String 
    age::Integer
    breed::String 
end 

# create struct instance

mydog = Dog("eggdog", 3, "eggdog mix") 

typeof(mydog) 

# access struct field value

mydog.name 

mydog.age 

mydog.breed

# mutate struct field value
mydog.name = "Doggo"

# cannot add new fields to struct

# mydog.email = "doggo@doggo.doggo" will not work



