class AddBackgroundImageUrlToCourse < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :background_image_url, :string
  end
end
