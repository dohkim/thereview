class AddUserIdToEvaluate < ActiveRecord::Migration
  def change
    add_column :evaluates, :user_id, :integer
  end
end
