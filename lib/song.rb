require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count +=1
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
    genre_count = {}
    @@genres.each do |genre|
    if genre_count[genre]
      genre_count[genre] += 1
    else
      genre_count[genre] = 1
    end
  end
  genre_count
end
def self.artist_count
  artist_count = {}
  @@artists.each do |genre|
  if artist_count[genre]
    artist_count[genre] += 1
  else
    artist_count[genre] = 1
  end
end
artist_count
end
end
