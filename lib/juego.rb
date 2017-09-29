
class Juego

	def initialize
		@posA = 0
		@posB = 0
		@proximo = 0

		@valorDado = 0
		@largoTablero = 7

		@turno = "A"
		@estado = "Juega A"

		@tableroA = "A _ _ _ _ _ _ _"
		@tableroB = "B _ _ _ _ _ _ _"

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
	
	def valorDado
		@valorDado
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
		dibujarTableroA
		dibujarTableroB
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

	def dibujarTableroA
		case @posA
		when 1
		  @tableroA = "_ A _ _ _ _ _ _"
		when 2
		  @tableroA = "_ _ A _ _ _ _ _"
		when 3
		  @tableroA = "_ _ _ A _ _ _ _"
		when 4
		  @tableroA = "_ _ _ _ A _ _ _"
		when 5
		  @tableroA = "_ _ _ _ _ A _ _"
		when 6
		  @tableroA = "_ _ _ _ _ _ A _"
		when 7
		  @tableroA = "_ _ _ _ _ _ _ A"
		end
	end

	def dibujarTableroB
		case @posB
		when 1
		  @tableroB = "_ B _ _ _ _ _ _"
		when 2
		  @tableroB = "_ _ B _ _ _ _ _"
		when 3
		  @tableroB = "_ _ _ B _ _ _ _"
		when 4
		  @tableroB = "_ _ _ _ B _ _ _"
		when 5
		  @tableroB = "_ _ _ _ _ B _ _"
		when 6
		  @tableroB = "_ _ _ _ _ _ B _"
		when 7
		  @tableroB = "_ _ _ _ _ _ _ B"
		end
	end
end




