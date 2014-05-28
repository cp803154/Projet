class Personnage < ActiveRecord::Base
	validates :nom, :presence => true
	validates :prenom, :presence => true
	validates :age, :presence => true

	has_and_belongs_to_many :scenes
end
