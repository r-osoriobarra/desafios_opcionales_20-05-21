#Desafío opcional - Juego 2 player Piedra, Papel o Tijera

puts "Bienvenido a Piedra, Papel o Tijera"
#metodo menú
def menu(player_n, player_option)
    until player_option >= 1 && player_option <=4
        puts "#{player_n}: selecciona un opción de juego: "
        print "1. Piedra\n"
        print "2. Papel\n"
        print "3. Tijeras\n"
        print "4. Salir\n"

        player_option = gets.to_i
        if player_option < 1 || player_option > 4
            puts "Por favor, ingresa una opción válida entre 1 y 4"
        end
    end
    return player_option
end

#método fin del juego
def fin_del_juego(player_n)
    case player_n
    when 4
        puts "Fin del juego."
        exit!
    end
end

#variables de juego y término del juego
player_1 = menu("Player 1", 0)
fin_del_juego(player_1)
player_2 = menu("Player 2", 0)
fin_del_juego(player_2)

#lógica de juego
if player_1 == player_2
    puts "Empate!"
elsif player_1 == 1 && player_2 == 3 ||  player_1 == 2 && player_2 == 1 || player_1 == 3 && player_2 == 2
    puts "Player 1 Gana!"
else
    puts "Player 2 Gana!"
end