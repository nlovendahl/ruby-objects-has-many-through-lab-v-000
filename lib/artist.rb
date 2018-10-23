class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre)
    song.artist = self
  end

  def songs
    self.songs.select {|s| s.artist == self}
  end

  def genres
    songs.map {|s| s.genre}
  end
