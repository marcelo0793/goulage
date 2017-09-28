
class Juego

	def initialize
		@pos = 0
		@proximo = 0
		@estado = "Segui jugando"
	end

	def pos
		@pos
	end

	def estado
		@estado
	end

	def forzarDado numero
		@proximo = numero
	end
	
	def tirarDado
		if @proximo == 0
			@pos += Random.rand 1..6
		else
			@pos += @proximo
			if @pos >= 6
					@estado = "Ganaste"
				end
		end
	end

end
