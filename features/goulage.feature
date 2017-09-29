Feature: Goulage

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








