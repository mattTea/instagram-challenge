class RemoveDataFromPictures < ActiveRecord::Migration[5.2]
  def change
    remove_column :pictures, :data, :binary
  end
end
