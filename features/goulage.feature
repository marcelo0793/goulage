Feature: Goulage

Scenario: Inicio de juego
Given Se abre el juego
Then Esta en la posicion 0

Scenario: Tira 3, esta en pos 3
Given Se abre el juego
When Tira 3
Then Esta en la posicion 3

Scenario: Tira 5, esta en pos 5
Given Se abre el juego
When Tira 5
Then Esta en la posicion 5
