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

  def songs
    Song.all.select do |s|
      s.genre == self
    end
  end

  def artists
    songs.map {|s| s.artist}
  end

end
