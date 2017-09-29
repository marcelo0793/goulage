require 'sinatra'
require './lib/juego.rb'

get '/' do
	@@juego = Juego.new
	@posA = @@juego.posA
	@posB = @@juego.posB
	@estado = @@juego.estado
	@tableroA= @@juego.tableroA
	@tableroB= @@juego.tableroB		
  	erb :goulage
end

post '/dado' do
	@@juego.tirarDado
	@posA = @@juego.posA
	@posB = @@juego.posB
	@estado = @@juego.estado
	@valorDado = @@juego.valorDado
	@tableroA= @@juego.tableroA
	@tableroB= @@juego.tableroB	

  	erb :goulage
end

