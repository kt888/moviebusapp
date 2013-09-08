class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :theatrename
      t.string :moviename

      t.timestamps
    end
  end
end
