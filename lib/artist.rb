class Artist
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
  Song.all.select {|temp| temp.artist == self}
  end

  def new_song (name, genre)
    Song.new(name, self, genre)
  end

  def genres
    songs.collect {|temp| temp.genre}
  end


end
