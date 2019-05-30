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
      @@artists << artist
      @@genres << genre
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
    genre_counts = {}
    @@genres.each do |genre|
      if genre_counts[genre] 
        genre_counts[genre] += 1
      else
        genre_counts[genre] = 1
      end
    end
    genre_counts
  end

  def self.artist_count
    count = {}
    @@artists.each do |artist|
      if count[artist]
        count[artist] += 1
      else
        count[artist] = 1
      end
    end
    count
  end
end
  





