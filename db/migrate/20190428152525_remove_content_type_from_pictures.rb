class RemoveContentTypeFromPictures < ActiveRecord::Migration[5.2]
  def change
    remove_column :pictures, :content_type, :string
  end
end
