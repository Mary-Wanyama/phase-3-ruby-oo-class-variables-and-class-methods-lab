require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@count +=1
        @@artists << artist
        @@genres << genre
    end
    def self.all 
        @@all
    end
    def self.count 
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end

end


Song.new('halo', 'Beyonce', 'R&B')
Song.new('with you', 'elevation', 'rock')
Song.count
Song.artists
Song.all
Song.genres

# binding.pry