class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    Artist.find(self.artist_id).name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    artist.songs << self
  end
end
