class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end

p1 = "what color are apples?\n(a) red\n(b) purple\n(c) orange"
p2 = "what color are bananas?\n(a) pink\n(b) red\n(c) yellow"
p3 = "what color are pears?\n(a) yellow\n(b) green\n(c) orange"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "c"),
    Question.new(p3, "b")
]

def run_test(questions)
    answer = ""
    score
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end
    puts ("You got " + score.to_s + "/" + questions.length().to_s)
end

run_test(questions)

# --- Inhertiance ---

class Chef
    def make_chicken
        puts "The chef makes chicken"
    end
    def make_salad
        puts "The chef makes salad"
    end
    def make_special_dish
        puts "The chef makes bbq ribs"
    end
end

class ItalianChef < Chef
    # method override
    def make_special_dish
        puts "The chef makes eggplant parm"
    end 
    def make_pasta
        print "The chef makes pasta"
    end
end

chef = Chef.new()
chef.make_chicken

italian_chef = ItalianChef.new()
italian_chef.make_pasta

# --- Reusing modules ---
require_relative "useful_tools.rb"
include Tools
Tools.sayhi("mike")