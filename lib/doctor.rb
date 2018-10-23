class Doctor

  @@all = []

  attr_accessor :name, :patients

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, date, self)
  end

  def appointments


end
