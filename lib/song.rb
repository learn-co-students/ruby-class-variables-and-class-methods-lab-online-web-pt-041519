class Song 
  @@count = 0 
  @@genres = []
  @@artists = []
  def initialize(name,artist,genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@genres << genre 
    @@artists << artist
  end
  attr_accessor :name , :artist , :genre 
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
    empty_hash = {}
  
  @@genres.each do |name|
  
    if empty_hash.has_key?(name)
      empty_hash[name] += 1 
     else 
       empty_hash[name] = 1  
  end
    
   end
     empty_hash

  
  end
  def self.artist_count 
    new_hash = {}
    @@artists.each do |name| 
      if new_hash.has_key?(name)
        new_hash[name] += 1 
      else 
        new_hash[name] = 1 
      end
    end
    new_hash
  end
    
    
end