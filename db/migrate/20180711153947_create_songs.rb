class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :genre
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
