class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_hash = {}
    @@artist_hash = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    attr_accessor :name, :artist, :genre

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
        @@genres.each do |genre|
            @@genre_hash[genre] ||= 0
            @@genre_hash[genre] += 1
        end
        @@genre_hash
    end

    def self.artist_count
        @@artists.each do |artist|
            @@artist_hash[artist] ||= 0
            @@artist_hash[artist] += 1
        end
        @@artist_hash
    end
end