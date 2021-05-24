#Desafío opcional - figuras

#menú
def menu(option = 0, n = 0)
    until option >= 1 && option <= 4
        puts "Seleccione una figura:
        1. Cuadrado
        2. Triángulo
        3. Pirámide
        4. Salir"
        option = gets.to_i
    end
    return option
end

#n iteraciones
def iteration(shape, n = 0)
    if shape == 4 
        puts "Fin del juego"
        abort
    else
        until n > 1
            puts "Ingrese un número (mayor que 1):"
            n = gets.to_i
        end
    end
    return n
end

#variables del programa y ejecución
shape = menu()
num = iteration(shape)

#métodos de figuras
#cuadrado
def cuadrado(num)
    num.times do
        num.times do
            print "*"
        end
        print "\n"
    end
end
#triángulo
def triangulo(num)
    num.times do |i|
        num.times do |j|
            case j <= i
            when true; print "*"
            else 
                print "\s"
            end  
        end
        print "\n"
    end
end

#pirámide
def piramide(num)
    (2 * num - 1).times do |i|
        if (i + 1) <= num
            (i + 1).times do
                print "*"
            end
        else
            (2 * num - 1 - i).times do
                print "*"
            end
        end
        print "\n"
    end
end

#llamando a los métodos
case shape
when 1
    cuadrado(num)
when 2
    triangulo(num)
when 3
    piramide(num)
end