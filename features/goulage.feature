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

#Scenario: Jugador A tira 6, Jugador A gano
#Given Se abre el juego
#When Jugador A tira 6
#Then Muestra el mensaje "Gano A"

Scenario: Inicia el juego y muestra turno Jugador A
Given Se abre el juego
Then Muestra el mensaje "Juega A"

Scenario: Jugador A tira 3, muestra juega B
Given Se abre el juego
When Jugador A tira 3
Then Muestra el mensaje "Juega B"

Scenario: Inicia el juego, muestra tablero A y B en 0
Given Se abre el juego
Then Muestra el tableroA "|A|_|_|_|_|_|_|_|"
Then Muestra el tableroB "|B|_|_|_|_|_|_|_|"

Scenario: Inicia el juego, juega A muestra tablero A
Given Se abre el juego
When Jugador A tira 3
Then Muestra el tableroA "|_|_|_|A|_|_|_|_|"

Scenario: Inicia,juega A muestra tablero A, juega B muestra tablero B
Given Se abre el juego
When Jugador A tira 3
When Jugador B tira 4
Then Muestra el tableroA "|_|_|_|A|_|_|_|_|"
Then Muestra el tableroB "|_|_|_|_|B|_|_|_|"








