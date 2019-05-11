class Song
  
  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def self.new_by_filename(file_name)  
    new_song = file_name.chomp(".mp3").split(" - ")
    new_song.name = Song.new(new_song[1])
    new_song.artist = new_song[0]
    new_song   
  end


  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
end