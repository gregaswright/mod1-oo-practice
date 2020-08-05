class Patient

    attr_accessor :name, :age, :impatience 

    @@all = []

    def initialize(name, age, impatience = 0)
        @name = name
        @age = age
        @impatience = impatience
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.inquire_appt_ready
        print "The doctor will be ready soon."
        increase_impatience
        #should print that the doctor will be ready soon and increase patient impatience by 1
    end

private

    def self.increase_impatience
        Patient.all.each {|patients| patients.impatience += 1}

        #should be a private method that increases impatience by 1 
    end


end

