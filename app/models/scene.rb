class Scene < ActiveRecord::Base
	validates :texte, :presence => true

	belongs_to :chapitre
	has_and_belongs_to_many :personnages
end
