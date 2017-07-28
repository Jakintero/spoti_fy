class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image_url
      t.date :released_at
      add_foreign_key :artis

      t.timestamps
    end
  end
end
