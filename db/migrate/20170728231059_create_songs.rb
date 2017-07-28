class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :number
      t.string :preview_url
      add_foreign_key :albums

      t.timestamps
    end
  end
end
