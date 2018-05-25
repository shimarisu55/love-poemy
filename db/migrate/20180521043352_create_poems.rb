class CreatePoems < ActiveRecord::Migration[5.2]
  def change
    create_table :poems do |t|
      t.string :foreword
      t.string :beginning
      t.string :poem
      t.string :image
      t.text :meaning
      t.string :author
      t.text :remark

      t.timestamps
    end
  end
end
