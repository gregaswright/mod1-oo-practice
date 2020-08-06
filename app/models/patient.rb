class Patient

    attr_accessor :name, :age, :doctor, :impatience

    @@all = []

    def initialize(name, age, doctor)
        @name = name
        @age = age
        @doctor = doctor
        @impatience = 0
        @@all << self
    end

    def self.all
        @@all
    end
    
    def inquire_appt_ready
        print "The doctor will be ready soon."
        increase_impatience
        #should print that the doctor will be ready soon and increase patient impatience by 1
    end

    def change_doctors(new_doctor)
        self.doctor = new_doctor
    end

private

    def increase_impatience
       self.impatience += 1

        #should be a private method that increases impatience by 1 
    end


end

