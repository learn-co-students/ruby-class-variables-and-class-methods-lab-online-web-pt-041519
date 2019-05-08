class Song
  @@count = 0 
  @@genres = []
  @@artists = []
  @@artists2 = []
  @@genres2 = []
  attr_accessor :name, :artist, :genre 
  def initialize(song_title, song_artist, song_genre)
    @name = song_title
    @artist = song_artist
    @genre = song_genre
    @@count += 1 
        @@artists << song_artist
      if @@artists2.include?(song_artist) == false
        @@artists2 << song_artist
      end
      @@genres << song_genre
      if @@genres2.include?(song_genre) == false
        @@genres2 << song_genre
      end 
      
  end 
  
  def self.count 
    return @@count
  end 
  
  def self.artists
    return @@artists2
  end 
  
  def self.genres
    return @@genres2
  end
  
  def self.genre_count
     gen_count = Hash.new
     @@genres.each do |gen|
       if gen_count.include?(gen) == false
         gen_count[gen] = 1  
        else
          gen_count[gen] += 1 
       end #end if 
      end #end do 2 
  return gen_count
end #end method 
  
  def self.artist_count
    art_count = Hash.new
     @@artists.each do |gen|
       if art_count.include?(gen) == false
         art_count[gen] = 1  
        else
          art_count[gen] += 1 
       end #end if 
      end #end do 2 
  return art_count
end #end method 
end 