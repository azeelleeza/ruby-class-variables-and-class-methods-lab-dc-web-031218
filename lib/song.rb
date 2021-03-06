class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists= []
  @@genres = []
  @@artist_count={}

  @@genre_count = {}


  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    # if !@@artists.include?(artist)
    @@genres << genre
    # if !@@genres.include?(genre)

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

  def self.artist_count
    @@artists.each do |artist|
      !@@artist_count.keys.include?(artist) ? @@artist_count[artist] = 1 : @@artist_count[artist] +=1
    end
    @@artist_count
  end


def self.genre_count
  @@genres.each do |genre|
    !@@genre_count.keys.include?(genre) ? @@genre_count[genre] = 1 : @@genre_count[genre] += 1
  end
  @@genre_count
end

end
