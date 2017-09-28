require 'sinatra'
require './lib/juego.rb'

get '/' do
	@@juego = Juego.new
	@pos = @@juego.pos
  erb :goulage
end

post '/dado' do
	@@juego.tirarDado
	@pos = @@juego.pos
  erb :goulage
end

