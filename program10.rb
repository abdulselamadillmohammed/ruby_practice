def pow(base_num, pow_num)
    result = 1
    pow_num.times do |index|
        result = result * base_num
    end
    return result
end

puts pow(2,3)
=begin

=end

# --- Reading from a file ---
File.open("sample.txt", "r") do |file|
    # puts file.read()
    # puts file.readline()
    # puts file.readline()

    for line in file.readlines()
        puts line
    end
end 

file = File.open("sample.txt", "r")
file.close()

# --- Append to a file ---
File.open("sample.txt", "a") do |file|
    file.write("\nOscar, Accounting")
end

# --- Writing to a file --- 
File.open("index.html", "w") do |file|
    file.write("<h1>Hello</h1>")
end