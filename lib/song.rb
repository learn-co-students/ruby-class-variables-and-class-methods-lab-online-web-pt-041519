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
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_counter = {}
    @@genres.each do |gen|
      if genre_counter.include?(gen)
        genre_counter[gen] = genre_counter[gen] += 1
      else
        genre_counter[gen] = 1
      end
    end
    genre_counter
  end

  def self.artist_count
    artist_counter = {}
    @@artists.each do |art|
      if artist_counter.include?(art)
        artist_counter[art] = artist_counter[art] += 1
      else
        artist_counter[art] = 1
      end
    end
    artist_counter
  end 

end
