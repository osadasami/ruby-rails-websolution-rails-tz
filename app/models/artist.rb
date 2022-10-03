class Artist < ApplicationRecord
  has_many :songs, -> { order(title: :asc) }

  scope :top, ->(letter, count) {
    order('songs_downloads desc')
    .where("name like ?", "#{letter}%")
    .limit(count)
  }

  def songs_top
    songs.sort_by { |song| -song.downloads_count }
  end
end
