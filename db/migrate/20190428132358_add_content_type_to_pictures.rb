class AddContentTypeToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :content_type, :string
  end
end
