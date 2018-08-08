class AddDefaultToRatingOnReviews < ActiveRecord::Migration[5.2]
  def change
    change_column_default(
      'reviews',
      'rating',
      0
    )
  end
end
