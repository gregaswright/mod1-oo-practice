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

3. Enumerables: filter creates an array for you, so there is no need to create one outside of it and shovel the instance inside. In addition, I would call each element singular `doctor` instead of `doctors` to make it clear you are looking at a single doctor instance. You code could simply read:
Doctor.all.filter do |doctor| 
    doctor.specialty == specialty_string
end

# Part 4 - Associations
- Please address the prior feedback! For instance about `Doctor.find_by_speciality`
- Otherwise `doctor.rb` looks good. One thing to make sure you're paying attention to is the wording of the deliverable. If it asks for a list of patients (not patient names) you should return an array of Patient instances, not names (as in your Part III Doctor#patients method)
- Be careful that the variable you use to describe the element in your enumerables (ie map, filter, etc). In both `Doctor#appointments` and `Patient#appointments` , I would change what you're calling the element to what is is - an appointment. Check out the other methods you wrote as well to make updates. 
- In `Patient#create_appointment` you should create a new appointment with a whole doctor instance, not just the name.
- Overall fairly strong showing. There are things you should do like described above to make your code clearer for you and other folks reading it.  