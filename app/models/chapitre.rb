class Chapitre < ActiveRecord::Base
	validates :titre, :presence => true
	validates :numero, :presence => true, :uniqueness => true, numericality: { greater_than: 0 }

	has_many :anecdotes
	has_many :scenes
end
