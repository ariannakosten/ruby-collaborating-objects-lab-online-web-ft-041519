class Song
  
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
   #@artist = nil
  end
  

  
  def self.new_by_filename(file_name)  
    file = file_name.chomp(".mp3").split(" - ")
    new_song = Song.new(file[1])
    new_song.artist = file[0]
    new_song   
  end

def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

#   def self.new_by_filename(file)
#     song_info = file.chomp(".mp3").split(" - ")
#     song = Song.new(song_info[1])
#     song.artist_name = song_info[0]
#     song
#   end
end