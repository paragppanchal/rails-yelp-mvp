class ChangeDefaultRatingOnReview < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:reviews, :rating, nil)
  end
end
