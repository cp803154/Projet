module ChapitresHelper

	def get_anecdote(chap)
		chap.anecdotes
	end
	
	def get_scene(chap)
		chap.scenes
	end
	
	def get_perso(scene)
		scene.personnages
	end

end
