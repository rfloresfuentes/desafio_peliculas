class AddImgToMovie < ActiveRecord::Migration[7.2]
  def change
    add_column :movies, :url_img, :string
  end
end
