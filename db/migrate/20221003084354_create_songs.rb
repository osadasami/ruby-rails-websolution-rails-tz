class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :length
      t.integer :filesize
      t.references :artist
      t.integer :downloads_count, default: 0

      t.timestamps
    end
  end
end
