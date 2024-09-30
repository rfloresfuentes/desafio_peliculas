class CreateNovels < ActiveRecord::Migration[7.2]
  def change
    create_table :novels do |t|
      t.string :name
      t.string :synopsis
      t.string :director

      t.timestamps
    end
  end
end
