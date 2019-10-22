module ArtistsHelper
    
    def display_artist(song)
        if song.artist
            link_to song.artist.name, artist_path(song.artist)
        else
            link_to "Add Artist", edit_song_path(song)
        end
    end
 
end

# def display_artist(artist)
#     if @artist.name
#         link_to @artist.name, artist_path(@artist)
#     else
#         link_to "Add Artist", edit_song_path(@artist.song)
#     end
# end