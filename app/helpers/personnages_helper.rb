module PersonnagesHelper

	def utilise(perso)
		c = 0
		if perso.scenes.empty?
			"Aucun"
		else
			c = 1
			perso.scenes.each do |scene|
				if scene.chapitre.nil?
				else
					if c == 1
						c = scene.chapitre
					else
						if c.numero > scene.chapitre.numero
							c = scene.chapitre
						end
					end
				end
			end
		end
		return c
	end
	
	def print_chap(c)
		if c == 0
			"Aucune scene"
		else
			if c == 1
				"Aucun chapitre"
			else
				link_to "#{c.numero} - #{c.titre}", c
			end
		end
	end

end
