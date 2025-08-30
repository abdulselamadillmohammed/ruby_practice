states = {
    "Pennysylvania" => "PA",
    "New York" => "NY",
    "Oregon" => "OR"
}

# puts states["Oregon"]

# define a method block
def sayhi(name, age=-1)
    puts ("Hello " + name + ", you are " + age.to_s)
end

sayhi("Mike", 73)