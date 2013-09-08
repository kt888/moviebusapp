class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :moviename
      t.integer :theatrenumber

      t.timestamps
    end
  end
end
