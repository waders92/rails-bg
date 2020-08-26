class UpdateImages < ActiveRecord::Migration[6.0]
  def change
    rename_column :images, :image, :photo
  end
end
