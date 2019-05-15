class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@artists = []
  @@genres = []
  
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
  
  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq 
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |x| 
    if genres_hash[x] 
      genres_hash[x] += 1  
    else 
      genres_hash[x] = 1
    end
    end
     genres_hash
  end

   def self.artist_count
      artists_hash = {}
      @@artists.each do |x| 
      if artists_hash[x] 
        artists_hash[x] += 1  
      else 
        artists_hash[x] = 1
      end
    end
      artists_hash
  end 

end

# song1 = Song.new("Tangled", "Bob Dylan", "Folk")
# song2 = Song.new("Born to Run", "Bruce Springsteen", "Rock")
# puts Song.count