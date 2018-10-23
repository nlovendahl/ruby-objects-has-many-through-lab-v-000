class Genre

  @@all = []

  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all?
  end

end
