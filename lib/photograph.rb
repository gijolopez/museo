class Photograph
  attr_reader :id,
              :artist_id,
              :museum_id,
              :name,
              :year
  def initialize(photo)
    @id         = 1
    @artist_id  = photo[:artist_id]
    @museum_id  = photo[:museum_id]
    @name       = photo[:name]
    @year       = photo[:year]
  end
end
