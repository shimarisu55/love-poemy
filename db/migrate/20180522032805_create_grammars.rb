class CreateGrammars < ActiveRecord::Migration[5.2]
  def change
    create_table :grammars do |t|
      t.string :grammar
      t.text :grammar_description
      t.integer :poem_id
      t.timestamps
    end
  end
end
