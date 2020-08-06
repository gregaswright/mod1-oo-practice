# Part 1 - Intro to OO
Looks very clean and no extra code written - good job! 

# Part 2

1. I think you have a bit of a misunderstanding of when to use instance and class methods. Spacifically for the methods that deal with patients impatients, those should be instance methods because impatients going up and down only effects that one instance of patient. 

2. when you are setting impateints to 0, you dont need to pass that in as an argument, because we want everyones impatients to always start with 0 we dont want the patient to have the oportunity to pass in a number when creating a new patient. would look something like this:

 def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @@all << self
    end