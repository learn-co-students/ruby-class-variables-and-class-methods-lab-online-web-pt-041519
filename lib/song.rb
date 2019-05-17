class Song 
  
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
  song_hash = {}
  @@genres.each do |el|
    if song_hash[el]
      song_hash[el] += 1
      else 
        song_hash[el] = 1
        end
      end
      song_hash
    end
    
    
def self.artist_count
  song_hash = {}
  @@artists.each do |el|
    if song_hash[el]
      song_hash[el] += 1
      else 
        song_hash[el] = 1
        end
      end
      song_hash
    end    
    
end
