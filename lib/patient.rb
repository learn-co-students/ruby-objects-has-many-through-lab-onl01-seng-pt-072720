class Patient
#     The `Patient` class needs a class variable `@@all` that begins as an empty array.
# - The `Patient` class needs a class method `.all` that lists each patient in the
#   class variable.
# - A patient is instantiated with a name and be saved in the `@@all` array.
# - The `Patient` class needs an instance method, `#new_appointment`, that takes in
#   a date and an instance of the `Doctor` class *in this order* 
#   and creates a new `Appointment`. The `Appointment` should know that it belongs 
#   to the patient.
# - The `Patient` class needs an instance method, `#appointments`, that iterates
#   through the `Appointment`s array and returns `Appointment`s that belong to the
#   patient.
# - The `Patient` class needs an instance method, `#doctors`, that iterates over
#   that patient's `Appointment`s and collects the doctor that belongs to each
#   `Appointment`.

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end
    
    def doctors
        appointments.collect {|appointment| appointment.doctor}
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end





end