Given(/^Se abre el juego$/) do
  visit '/'
end

Then(/^Jugador A esta en la posicion (\d+)$/) do |posicion|
  @texto = "Jugador A está en la posición " + posicion
  last_response.body.should =~ /#{@texto}/m
end

Then(/^Jugador B esta en la posicion (\d+)$/) do |posicion|
  @texto = "Jugador B está en la posición " + posicion
  last_response.body.should =~ /#{@texto}/m
end

When(/^Jugador A tira (\d+)$/) do |numeroDado|
   @@juego.forzarDado numeroDado.to_i
   click_button("tirarDado")
end

When(/^Jugador B tira (\d+)$/) do |numeroDado|
   @@juego.forzarDado numeroDado.to_i
   click_button("tirarDado")
end


Then(/^Muestra el mensaje "(.*?)"$/) do |estado|
  last_response.body.should =~ /#{estado}/m
end

Then(/^Muestra el tableroA "(.*?)"$/) do |tablero|
  last_response.body.should =~ /#{tablero}/m
end

Then(/^Muestra el tableroB "(.*?)"$/) do |tablero|
  last_response.body.should =~ /#{tablero}/m
end














