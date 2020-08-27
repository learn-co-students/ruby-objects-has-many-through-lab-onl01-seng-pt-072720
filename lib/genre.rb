class Genre 

attr_accessor :name

  @@all= []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    # Song.all.select{|song| song.genre == self}
   Song.all.select do |song|
      song.genre == self
    end
  end
   
  def artists
    songs.collect do |song| 
      song.artist
    end
    
    #self.songs.collect { |song| song.artist }
    
  end
end