class Doctor
    attr_accessor :name

@@all = []

    def initialize (name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def appointments
      Appointment.all.select {|temp| temp.doctor == self}
    end

    def new_appointment (date, patient)
      Appointment.new(date, patient, self)
    end

    def patients
      appointments.map {|temp| temp.patient}
    end

  end
