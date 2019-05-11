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
  
  def self.find_or_create_by_name
  if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  # def self.find(name)     #class method detects instances from @@all class variable
  #   self.all.detect { |artist| artist.name == name }
  # end

  # def self.create(name)   #class method creates & stores instances vs initializing
  #   artist = Artist.new(name)
  #   artist.save
  #   artist
  # end

  def print_songs         #instance method iterates through @songs belonging to Artist
    @songs.each {|song| puts song.name}
  end
end