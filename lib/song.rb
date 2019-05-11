class Song
  
  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end
  
  def self.new_by_filename(file_name)  
    new_song = file_name.chomp(".mp3").split(" - ")
    new_song.name = new_song[1]
    new_song.artist = new_song[0]
    new_song   
    
    def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end
end 


  end
end