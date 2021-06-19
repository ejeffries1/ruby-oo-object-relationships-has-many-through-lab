class Doctor
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor
        end
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        Appointment.all.collect do |appt|
            appt.patient
        end
    end
end
