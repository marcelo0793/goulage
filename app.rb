require 'sinatra'
require './lib/juego.rb'

get '/' do
	@@juego = Juego.new
	@posA = @@juego.posA
	@posB = @@juego.posB
  	erb :goulage
end

post '/dado' do
	@@juego.tirarDado
	@posA = @@juego.posA
	@posB = @@juego.posB
	@estado = @@juego.estado	

  	erb :goulage
end

