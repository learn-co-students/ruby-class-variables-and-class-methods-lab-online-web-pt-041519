class Song

  attr_reader :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    count_hash = {}
      @@genres.each { |genre| count_hash[genre] ? count_hash[genre] += 1 : count_hash[genre] = 1 }
    count_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each { |artist| artist_hash[artist] ? artist_hash[artist] += 1 : artist_hash[artist] = 1 }
    artist_hash
  end
end
