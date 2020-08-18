class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :title
      t.text :content
      t.string :gist

      t.timestamps
    end
  end
end
