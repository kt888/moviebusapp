class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :areaname

      t.timestamps
    end
  end
end
