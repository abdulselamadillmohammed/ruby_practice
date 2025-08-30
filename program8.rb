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

def cube(num)
    return num * num * num, 70
end

#puts cube(3)[1]

# --- If statements ---

ismale = false

if ismale
    puts "You are male"
else
    puts "You are not males"
end
# and, or, not are supported
# elsif instead of elseif or elif

def max(num1, num2, num3)
    if num1 >= num2 and num1 >=num3
        return num1
    elsif num2 >= num1 and num2 >= num3
        return num2
    else 
        return num3
    end
end

puts max(1,2,3)