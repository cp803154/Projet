module AnecdotesHelper
	def associe(anec)
		if anec.chapitre.nil?
			"Aucun chapitre associe !"
		else
			link_to "#{anec.chapitre.numero} - #{anec.chapitre.titre}", anec.chapitre
		end
	end
end
