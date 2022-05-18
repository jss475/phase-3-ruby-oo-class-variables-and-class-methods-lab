require 'pry'
class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}
        genre_tracker = []
        @@genres.each do |genre|
            if genre_tracker.include?(genre) == false
                genre_tracker <<genre
                genre_hash[genre] = 1
            else
                genre_hash[genre] +=1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        artist_tracker = []
        @@artists.each do |artist|
            if artist_tracker.include?(artist) == false
                artist_tracker <<artist
                artist_hash[artist] = 1
            else
                artist_hash[artist] +=1
            end
        end
        artist_hash
    end


    
end
