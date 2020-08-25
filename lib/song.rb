class Song 
  
  attr_reader :title, :genre, :artist
  
  @@all = []
  
  def initialize(name, artist, genre)
    @artist = artist
    @title = title
    @genre = genre
    @@all << self
  end   
  
  def self.all 
    @@all 
  end   
  
end   