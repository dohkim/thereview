class AddReviewIdToEvaluates < ActiveRecord::Migration
  def change
    add_column :evaluates, :review_id, :integer
  end
end
