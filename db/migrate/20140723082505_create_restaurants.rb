class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :property
      t.string :alphabet
      t.string :name_kana
      t.references :pref, index: true
      t.references :area, index: true
      t.integer :station_id1
      t.integer :station_time1
      t.integer :station_distance1
      t.integer :station_id2
      t.integer :station_time2
      t.integer :station_distance2
      t.integer :station_id3
      t.integer :station_time3
      t.integer :station_distance3
      t.integer :category_id1
      t.integer :category_id2
      t.integer :category_id3
      t.integer :category_id4
      t.integer :category_id5
      t.string :zip
      t.string :address
      t.decimal :north_latitude, precision: 9, scale: 6
      t.decimal :east_longitude, precision: 9, scale: 6
      t.string :description
      t.string :purpose
      t.string :open_morning
      t.string :open_lunch
      t.string :open_late
      t.integer :photo_count
      t.integer :special_count
      t.integer :menu_count
      t.integer :fan_count
      t.integer :access_count
      t.string :closed

      t.timestamps
    end
  end
end
