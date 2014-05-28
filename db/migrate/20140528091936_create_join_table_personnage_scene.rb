class CreateJoinTablePersonnageScene < ActiveRecord::Migration
  def change
    create_join_table :personnages, :scenes do |t|
      # t.index [:personnage_id, :scene_id]
      # t.index [:scene_id, :personnage_id]
    end
  end
end
