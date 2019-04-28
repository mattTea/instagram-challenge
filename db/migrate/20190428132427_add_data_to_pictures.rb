class AddDataToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :data, :binary
  end
end
