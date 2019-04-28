class RemoveFilenameFromPictures < ActiveRecord::Migration[5.2]
  def change
    remove_column :pictures, :filename, :string
  end
end
