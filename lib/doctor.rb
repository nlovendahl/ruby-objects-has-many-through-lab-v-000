class Doctor

  @@all = []

  attr_accessor :name, :patients, :appointments

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, date, self)
  end

end
