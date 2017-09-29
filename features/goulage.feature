Feature: Goulage

Scenario: Inicio de juego
Given Se abre el juego
Then Jugador A esta en la posicion 0
Then Jugador B esta en la posicion 0

Scenario: Jugador A tira 3, Jugador A esta en posicion 3
Given Se abre el juego
When Jugador A tira 3
Then Jugador A esta en la posicion 3

Scenario: Jugador A tira 5, Jugador A esta en posicion 5
Given Se abre el juego
When Jugador A tira 5
Then Jugador A esta en la posicion 5

Scenario: Jugador A tira 6, Jugador 6 gano
Given Se abre el juego
When Jugador A tira 6
Then Muestra el mensaje "Gano A"
