require "pry"
class Song
    attr_accessor :name, :artist
    @@all = []
  def initialize(name)
    @name = name
    @@all << self

  end 
  def self.all
    @@all
  end 
  def self.new_by_filename(filename)
    music_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    song = self.new(song_name)
    song.artist_name=(music_name)
    song
    #binding.pry
  end

  def artist_name=(name)
  self.artist =  Artist.find_or_create_by_name(name)
  #binding.pry
  end 
end