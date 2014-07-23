class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.references :pref, index: true
      t.string :name
    end
  end
end
