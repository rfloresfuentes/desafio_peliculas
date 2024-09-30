class AddImgToDocumentary < ActiveRecord::Migration[7.2]
  def change
    add_column :documentaries, :url_img, :string
  end
end
