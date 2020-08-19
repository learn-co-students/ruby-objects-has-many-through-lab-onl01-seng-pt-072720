class Genre
    attr_accessor :name, :songs
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def songs 
        Song.all.select {|s| s.genre == self}
    end
    def self.all
        @@all
    end
    def artists
        self.songs.map {|s| s.artist}
    end
end