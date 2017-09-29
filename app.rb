require 'sinatra'
require './lib/juego.rb'

get '/' do
	@@juego = Juego.new
	@posA = @@juego.posA
	@posB = @@juego.posB
	@estado = @@juego.estado
	@tableroA= "A _ _ _ _ _ _"	
	@tableroB= "B _ _ _ _ _ _"		
  	erb :goulage
end

post '/dado' do
	@@juego.tirarDado
	@posA = @@juego.posA
	@posB = @@juego.posB
	@estado = @@juego.estado
	@tableroA= "_ _ _ A _ _ _"	
	@tableroB= "_ _ _ _ B _ _"	

  	erb :goulage
end

