class Artist

  @@all = []

  attr_accessor :name, :songs, :genre

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
  end

  def songs
    @songs.select {|s| s.artist == self}
  end

  def genres
    songs.map {|s| s.genre}
  end

end
