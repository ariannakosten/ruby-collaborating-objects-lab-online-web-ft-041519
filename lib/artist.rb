class Artist 
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.songs << song  #keeps track of an *Artists(self). songs* and stores them in @songs array
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def print_songs
    self.songs
  end
end