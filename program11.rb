# --- exception handling ---

lucky_nums = [4, 8, 15, 16, 23, 42]

begin
    lucky_nums["dog"]
    num = 10 / 0
rescue ZeroDivisionError
    puts "Division by zero error"
rescue TypeError
    puts "Wrong type"
rescue
    puts "Other type of error"
end

# --- Classes & Objects --- 

class Book
    attr_accessor :title, :author, :pages 
    def initialize(title, name, pages)
        @title = title
        @name = name
        @pages = pages 
    end
end

# book1 = Book.new()
# book1.title = "Harry Potter"
# book1.author = "JK Rowling"
# book1.pages = 400

# puts book1.pages

# book2 = Book.new()
# book2.title = "Lord of the rings"
# book2.author = "Tolkein"
# book2.pages = 500 

book1 = Book.new("Harry Potter", "JK Rowling", 400)

# --- class methods ---

class Student
    attr_accessor :name, :major, :gpa
    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end

    def has_honors
        if @gpa >= 3.5
            return true
        end
        return false
    end

end

student1 = Student.new("Jim", "Business", 2.6)
student2 = Student.new("Pam", "Art", 3.6)

# puts student2.has_honors