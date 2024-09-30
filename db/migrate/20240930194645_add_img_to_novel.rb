class AddImgToNovel < ActiveRecord::Migration[7.2]
  def change
    add_column :novels, :url_img, :string
  end
end
