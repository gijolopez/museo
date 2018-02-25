require './lib/museum'
require './lib/artist'
require './lib/photograph'

class Curator
  attr_reader :artists,
              :museums,
              :photographs
  def initialize
    @artists     = []
    @museums     = []
    @photographs = []
  end

  def add_museum(data)
    data[:id]= 1
    museum = Museum.new(data)
    @museums << museum
  end

  def add_artist(art)
    art[:id]=1
    artist = Artist.new(art)
    @artists << artist
  end

  def add_photograph(photo)
    photo[:id]=1
    photograph = Photograph.new(photo)
    @photographs << photograph
  end

  def find_museum(id)
    @museums.find { |museum| id == museum.id }
  end

  def find_artist(id)
    @artists.find { |art| id == art.id }
  end

  def find_museum_by_photograph(photograph)
    @museums.find { |museum| photograph.id == museum.id }
  end

  def find_artist_by_photograph(photograph)
    @artists.find { |art| photograph.id == art.id }
  end
end
