
class Juego

	def initialize
		@pos = 0
		@proximo = 0
	end

	def pos
		@pos
	end

	def forzarDado numero
		@proximo = numero
	end
	
	def tirarDado
		if @proximo == 0
			@pos += Random.rand 1..6
		else
			@pos += @proximo
		end
	end

end
