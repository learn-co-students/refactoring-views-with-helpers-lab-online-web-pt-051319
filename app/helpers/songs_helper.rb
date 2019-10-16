module SongsHelper

	def display_artist(song)
		# binding.pry
		song.artist ? link_to(song.artist_name, artist_path(song.artist)) : link_to('Add Artist', edit_song_path(song))
	end

end
