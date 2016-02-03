class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :restaurant
      t.string :content

      t.timestamps null: false
    end
  end
end
