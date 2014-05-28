class Anecdote < ActiveRecord::Base
	validates :sujet, :presence => true
	validates :texte, :presence => true

	belongs_to :chapitre
end
