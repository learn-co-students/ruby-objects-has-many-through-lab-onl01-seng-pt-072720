class Artist 
  attr_accessor :genres, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all
  end
  
  def new_song(song_name, genre) 
    new_song = Song.new(song_name, self, genre)
    # new_song.artist = self
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def genres 
    songs.map{|song| song.genre}
  end
  
end