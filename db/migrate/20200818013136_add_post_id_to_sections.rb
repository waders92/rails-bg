class AddPostIdToSections < ActiveRecord::Migration[6.0]
  def change
    add_column :sections, :post_id, :integer
  end
end
