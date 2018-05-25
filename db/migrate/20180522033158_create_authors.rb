class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :author_name
      t.text :author_description
      t.integer :poem_id
      t.timestamps
    end
  end
end
