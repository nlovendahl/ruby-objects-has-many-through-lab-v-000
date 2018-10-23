class Appointment

  @@all = []

  attr_accessor :doctor, :patient

  def initialize(patient, date)
    @patient = patient
    @date = date
    @@all << self
  end

end
