
class Juego

	def initialize
		@posA = 0
		@posB = 0
		@proximo = 0
		@estado = "Juega A"
	end

	def posA
		@posA
	end

	def posB
		@posB
	end

	def estado
		@estado
	end

	def forzarDado numero
		@proximo = numero
	end
	
	def tirarDado
		if @proximo == 0
			@posA += Random.rand 1..6
		else
			@posA += @proximo
		end
		
		tirarDadoB

		validarGanador

	end

	def tirarDadoB
		@posB += Random.rand 1..6
	end

	def validarGanador
		if @posA >= 6
			@estado = "Gano A"
		else
			if @posB >= 6
				@estado = "Gano B"
			end
		end
	end
end
