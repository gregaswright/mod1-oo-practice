class Doctor

    attr_accessor :name, :years
    attr_reader :specialty

    def initialize(name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years
    end

end

barns = Doctor.new("Dr. Barns", "Bones", 5)
edger = Doctor.new("Dr. Edger", "Eye Lash", 4) 
peters = Doctor.new("Dr. Peters", "Elbow Skin")