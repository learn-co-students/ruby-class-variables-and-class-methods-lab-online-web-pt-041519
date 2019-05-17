class Song
  
Song.new
attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []



    def initialize(song_name, artist, genre)
      @name = song_name
      @artist = artist
      @genre = genre
      @@count += 1 
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
