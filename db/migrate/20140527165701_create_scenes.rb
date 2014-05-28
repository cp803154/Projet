class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.text :texte
      t.string :lieu
      t.datetime :date
      t.references :chapitre, index: true

      t.timestamps
    end
  end
end
