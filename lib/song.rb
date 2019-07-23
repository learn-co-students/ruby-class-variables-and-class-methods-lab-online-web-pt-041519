require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  @@library = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist
    @@library[name] = {:artist =>artist, :genre => genre}
  end
  
  def self.library
    @@library
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
    genre_count = {}
    genres.each do |genre| 
      count = 0 
       @@library.each do |song, cats|
          if cats[:genre] == genre 
            count +=1 
          end
         
        end  
        genre_count[genre] = count 
    end  
    genre_count
  end  
  
    def self.artist_count
    artist_count = {}
    artists.each do |artist| 
      count = 0 
       @@library.each do |song, cats|
          if cats[:artist] == artist
            count +=1 
          end  
        end  
        artist_count[artist] = count 
    end  
    artist_count
  end  
end 


#binding.pry


