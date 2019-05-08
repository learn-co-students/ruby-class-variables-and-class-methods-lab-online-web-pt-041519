require 'pry'

# Define Song class
class Song
  # Set writers and readers
  attr_accessor :name, :artist, :genre

  # Set class variables
  @@count = 0
  @@artists = []
  @@genres = []

  # Run when object is initialized
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre   
  end
 
  # Track number of songs created
  def self.count
    @@count
  end

  # Track array for unique artists
  def self.artists
    @@artists.uniq
  end

  # Track array for unique genres
  def self.genres
    @@genres.uniq
  end

  # Track hash for number of songs in each genre
  def self.genre_count
    @@genres.reduce({}){ |hash, element| hash[element] ||= 0; hash[element] += 1; hash}
  end

  # Track hash for number of songs from each artist
  def self.artist_count
    @@artists.reduce({}){ |hash, element| hash[element] ||= 0; hash[element] += 1; hash}
  end
end


