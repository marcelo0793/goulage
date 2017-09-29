
class Juego

	def initialize
		@posA = 0
		@posB = 0
		@proximo = 0
		@turno = "A"
		@estado = "Juega A"
	end

	def pos
		@posA
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

	def turno
		@turno
	end

	def forzarDado numero
		@proximo = numero
	end
	
	def tirarDado
		
	if @turno == "A"
		if @proximo == 0
			@posA += Random.rand 1..6
		else
			@posA += @proximo
		end
		@turno = "B"
		@estado = "Juega B"
	else
		if @proximo == 0
			@posB += Random.rand 1..6
		else
			@posB += @proximo
		end
		@turno = "A"
		@estado = "Juega A"
	end 

		validarGanador

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
