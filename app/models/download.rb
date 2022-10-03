class Download < ApplicationRecord
  belongs_to :song, counter_cache: true

  after_create :update_artist_total_downloads

  private

  def update_artist_total_downloads
    artist = song.artist
    artist.update(songs_downloads: artist.songs_downloads + 1)
  end
end
