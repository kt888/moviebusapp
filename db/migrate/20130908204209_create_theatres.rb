class CreateTheatres < ActiveRecord::Migration
  def change
    create_table :theatres do |t|
      t.string :theatrename
      t.string :moviename

      t.timestamps
    end
  end
end
