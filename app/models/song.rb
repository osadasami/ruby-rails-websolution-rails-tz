class Song < ApplicationRecord
  belongs_to :artist
  has_many :downloads

  scope :top, ->(days, count) {
    joins(:downloads)
    .where('downloads.created_at >= ?', Time.now - days.days)
    .order('downloads_count desc')
    .limit(count)
  }
end
