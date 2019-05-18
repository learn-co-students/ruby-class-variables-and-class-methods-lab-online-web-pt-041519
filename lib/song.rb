class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@names = []

#takes in three arguments: a name, artist and genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1         # start by counting by one
    @@artists << @artist
    @@genres << @genre
    @@names << @name
  end

  def self.count
    @@count         #is counting
  end

  def self.names
    @@names.uniq
  end

  def self.artists  #class method self.
    @@artists.uniq  #takes away doubles
  end

  def self.genres  #class method self
    @@genres.uniq  #takes away doubles
  end

# return hash and the number of songs that have those genres
  def self.genre_count
     genre_count = {}  #return a hash. right now its empty
     @@genres.each do |genre| #goes through class array of genre ---- genres = ["pop"]
   if genre_count[genre].nil?       # genre is key. if hash value is empty             ---- genre_count = { } <--empty
     genre_count[genre] = 1   # add one
   else
     genre_count[genre] += 1    #if not put one                   ---- genre_count = { ? => 1}
   end
 end
 genre_count
end

def self.artist_count
   artist_count = {}  #return a hash. right now its empty
   @@artists.each do |artist| #goes through class array of genre ---- genres = ["pop"]
 if artist_count[artist].nil?       # genre is key. if hash value is empty             ---- genre_count = { } <--empty
   artist_count[artist] = 1   # add one
 else
   artist_count[artist] += 1    #if not put one                   ---- genre_count = { ? => 1}
 end
end
artist_count
end

end
