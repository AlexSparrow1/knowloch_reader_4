class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.string :author
      t.string :year
      t.string :title
      t.string :journal
      t.integer :volume
      t.string :pages
      t.string :abstract

      t.timestamps
    end
  end
end
