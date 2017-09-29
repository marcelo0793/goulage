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

	it "Si tiro un dado, aumenta tambien la posicion de B" do

		juego = Juego.new
		juego.tirarDado
		juego.posB.should_not == 0 

	end

end
