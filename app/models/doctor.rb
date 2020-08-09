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

    def appointments
        Appointment.all.select{|patient| patient.doctor == self}
    end

    def patients
        self.appointments.map{|doctor| doctor.patient}.uniq
    end

    # def patients
    #     Patient.all.select{|patients| patients.doctor == self}
    #     patients_array = []
    #     Patient.all.select do |patients| 
    #         if patients.doctor == self
    #             patients_array << patients.name
    #         end
    #     end
    #     patients_array
    # should return an array of all the Patients for that 
    # doctor
    # end

    # def discharge_patient(patient_instance)
    #     if patient_instance.doctor == self
    #         patient_instance.doctor = nil
    #     else
    #         puts "that is not your patient"
    #     end
   
        # should set a patient’s doctor to nil, only if the patient belongs to the current doctor
    # end

    # def transfer_doctor(patient_instance, doctor_instance)
    #     if patient_instance.doctor == self
    #         patient_instance.doctor = doctor_instance
    #     # should change a patient’s doctor to another doctor. This should only work if the patient belongs to the current doctor.
    #     end
    # end

end

