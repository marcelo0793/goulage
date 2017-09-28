require "./lib/juego.rb"

describe "Juego" do

	it "Si fuerzo un 3, caigo en la posicion 3" do

		juego = Juego.new
		juego.forzarDado 3
		juego.tirarDado
		juego.pos.should == 3

	end

end
