class CreateRatingVotes < ActiveRecord::Migration
  def change
    create_table :rating_votes, id: false, primary_key: :rating_id do |t|
      t.integer :rating_id
      t.string :user
      t.datetime :created_on
    end
  end
end
