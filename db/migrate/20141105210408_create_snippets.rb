class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :author
      t.string :quote

      t.timestamps
    end
  end
end
