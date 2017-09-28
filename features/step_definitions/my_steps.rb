Given(/^Se abre el juego$/) do
	  visit '/'
end

Then(/^Esta en la posicion (\d+)$/) do |pos|
  last_response.body.should =~ /#{pos}/m
end

When(/^Tira (\d+)$/) do |numeroDado|
	@@juego.forzarDado numeroDado.to_i
	click_button( "tirarDado")
end

Then(/^Tiene el estado "(.*?)"$/) do |estado|
  last_response.body.should =~ /#{estado}/m
end






