require "./lib/juego.rb"

describe "Juego" do

	it "Si fuerzo un 3, caigo en la posicion 3" do

		juego = Juego.new
		juego.forzarDado 3
		juego.tirarDado
		juego.posA.should == 3

	end

	it "Si fuerzo un 6, dice Ganaste" do

		juego = Juego.new
		juego.forzarDado 6
		juego.tirarDado
		juego.estado.should == "Gano A"

	end

	it "Si tiro un dado, sale un numero y es menor a 7" do

		juego = Juego.new
		juego.tirarDado
		juego.posA.should < 7

	end

	it "Si es el turno de A, tira los doados y le toca a B" do

		juego = Juego.new
		juego.tirarDado
		juego.turno.should == "B"

	end

	it "Si tira A, cambia la pos de A. Y despues tira B, cambia la pos de B" do

		juego = Juego.new
		juego.tirarDado
		juego.tirarDado
		juego.posB.should > 0

	end

	it "Si la posicion de A es mayo a 6, rebota" do

		juego = Juego.new
		juego.forzarDado 3
		juego.tirarDado
		juego.forzarDado 1
		juego.tirarDado
		juego.forzarDado 5
		juego.tirarDado
		juego.posA.should == 4

	end

end
