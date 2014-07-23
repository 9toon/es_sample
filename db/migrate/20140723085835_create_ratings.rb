class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references:restaurant
      t.references :user
      t.integer :total
      t.integer :food
      t.integer :service
      t.integer :atmosphere
      t.integer :cost_performance
      t.string :title
      t.string :body
      t.integer :purpose
      t.datetime :created_on
    end
  end
end
