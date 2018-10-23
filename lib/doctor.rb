class Doctor

  @@all = []

  attr_accessor :name, :patients, :appointment

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, date)
  end

end
