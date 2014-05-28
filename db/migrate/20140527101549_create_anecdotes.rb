class CreateAnecdotes < ActiveRecord::Migration
  def change
    create_table :anecdotes do |t|
      t.string :sujet
      t.text :texte
      t.string :themes
      t.references :chapitre, index: true

      t.timestamps
    end
  end
end
