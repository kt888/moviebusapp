class CreateTheatres < ActiveRecord::Migration
  def change
    create_table :theatres do |t|
      t.string :theatrename
      t.string :moviename
      t.string :string
      t.string :location_id
      t.string :int

      t.timestamps
    end
  end
end
