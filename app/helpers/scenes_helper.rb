module ScenesHelper
	def associe(scene)
		if scene.chapitre.nil?
			"Aucun chapitre associe !"
		else
			link_to "#{scene.chapitre.numero} - #{scene.chapitre.titre}", scene.chapitre
		end
	end
	
	def get_perso(scene)
		scene.personnages
	end
end
