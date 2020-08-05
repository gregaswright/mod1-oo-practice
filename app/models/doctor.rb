class Doctor

    attr_accessor :name, :years
    attr_reader :specialty

    @@all = []

    def initialize(name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_speciality(specialty_string)
        doctor_array = []
        Doctor.all.filter do |doctors| 
            if doctors.specialty == specialty_string
                doctor_array << doctors.name
            end
        end
        doctor_array
    end

end

