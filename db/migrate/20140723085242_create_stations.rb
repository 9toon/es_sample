class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.references :pref, index: true
      t.string :name
      t.string :name_kana
      t.string :property
    end
  end
end
