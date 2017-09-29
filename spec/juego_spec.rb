require "./lib/juego.rb"

describe "Juego" do

	it "Si fuerzo un 3, caigo en la posicion 3" do

		juego = Juego.new
		juego.forzarDado 3
		juego.tirarDado
		juego.pos.should == 3

	end

	it "Si fuerzo un 6, dice Ganaste" do

		juego = Juego.new
		juego.forzarDado 6
		juego.tirarDado
		juego.estado.should == "Ganaste"

	end

end
