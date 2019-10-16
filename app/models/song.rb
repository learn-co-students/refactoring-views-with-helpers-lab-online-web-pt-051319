class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
  	self.artist && self.artist.name
  end

  def artist_name=(name)
  	!name.blank? ? self.artist = Artist.find_or_create_by(name: name) : nil
  end
end
