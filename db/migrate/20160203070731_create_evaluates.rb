class CreateEvaluates < ActiveRecord::Migration
  def change
    create_table :evaluates do |t|
      t.integer :rating
      t.text :comment

      t.timestamps null: false
    end
  end
end
