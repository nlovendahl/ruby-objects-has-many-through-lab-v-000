class Patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select {|a| a.patient == self}
  end

  def doctors
    Appointment.all.select {|a| a.patient == self}
  end

end
