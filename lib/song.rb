class Song
  attr_accessor :name, :artist, :genre

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
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    #@@genres.group_by(&:itself).map { |k,v| [k, v.count] }.to_h
    @@genres.uniq.map {|genre, genre_amount| [genre, genre_amount.count]}.to_h
  end

  def self.artist_count
    @@artists.group_by(&:itself).map { |k,v| [k, v.count] }.to_h
  end


end
