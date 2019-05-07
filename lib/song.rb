class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre

        @@genres << genre
        @@artists << artist
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
        out = {}
        @@genres.each do |el|
            out[el] ||= 0
            out[el] += 1
        end
        out
    end

    def self.artist_count
        out = {}
        @@artists.each do |el|
            out[el] ||= 0
            out[el] += 1
        end
        out
    end

end