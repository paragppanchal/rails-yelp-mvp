class AddNotNullToRatingOnReviews < ActiveRecord::Migration[5.2]
  def change

    change_column_null(
      :reviews,
      :rating,
      false
    )
  end
end
