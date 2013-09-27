class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :moviename
      t.string :theatrenumber
      t.string :string
      t.string :theatre_id
      t.string :int

      t.timestamps
    end
  end
end
