
class Juego

	def initialize
		@posA = 0
		@posB = 0
		@proximo = 0

		@valorDado = 0
		@largoTablero = 6

		@turno = "A"
		@estado = "Juega A"

		@tableroA = "A _ _ _ _ _ _"
		@tableroB = "B _ _ _ _ _ _"

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

	def largoTablero
		@largoTablero
	end

	def posVirtualA
		@posVirtualA = @posA
	end

	def posVirtualB
		@posVirtualB = @posB
	end

	def estado
		@estado
	end

	def turno
		@turno
	end

	def tableroA
		@tableroA
	end

	def tableroB
		@tableroB
	end

	def forzarDado numero
		@proximo = numero
	end
	
	def tirarDado

	if @turno == "A"
		if @proximo == 0
			@valorDado = Random.rand 1..6
		else
			@valorDado = @proximo
		end

		hacerRebote

		@turno = "B"
		@estado = "Juega B"
	else
		if @proximo == 0
			@valorDado = Random.rand 1..6
		else
			@valorDado = @proximo
		end
	
		hacerRebote

		@turno = "A"
		@estado = "Juega A"
	end 

		validarGanador

	end

	def hacerRebote 
		
		if @turno == "A"
			@posVirtualA = @posA + @valorDado
				if @posVirtualA > @largoTablero
					@posA = @largoTablero - ( @posVirtualA - @largoTablero )
									
				else
					@posA = @posVirtualA
				end   	
		else
			@posVirtualB = @posB + @valorDado
				if @posVirtualB > @largoTablero
					@posB = @largoTablero - ( @posVirtualB - @largoTablero )
								
				else
					@posB = @posVirtualB  	
				end
		end

	end

	def validarGanador
		if @posA == @largoTablero
			@estado = "Gano A"
		else
			if @posB == @largoTablero
				@estado = "Gano B"
			end
		end
	end
end
