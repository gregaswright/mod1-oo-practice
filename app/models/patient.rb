class Patient

    attr_accessor :name, :age, :impatience

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
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

    def appointments
        Appointment.all.select{|app| app.patient == self}
    end

    def doctors
        self.appointments.map{|app| app.doctor}.uniq
    end

    def create_appointment(doctor_instance)
        Appointment.new(doctor_instance, self)
    end

    # def change_doctors(new_doctor)
    #     self.doctor = new_doctor
    # end

private

    def increase_impatience
       self.impatience += 1

        #should be a private method that increases impatience by 1 
    end


end

