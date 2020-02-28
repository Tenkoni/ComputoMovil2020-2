import UIKit
import Foundation

var str = "Hello, playground"

struct Persona{
    let name: String
    
    func saludo(){
        print("Hola \(name)")
    }
    
}

let persona1 = Persona(name: "Angela")

print(persona1.name)

persona1.saludo()

let alumno = Persona(name: "Miguel")

alumno.saludo()

struct Pantalon{
    var talla: Int
    var color: String
}

let miPantalon = Pantalon(talla: 28, color: "Negro")

let pantalonAngela = Pantalon(talla: 26, color: "Azul")

struct Temperatura{
    var celsius: Double
    
    init(celsius: Double){
        self.celsius = celsius
    }

    init(farenheit: Double){
        celsius = (farenheit - 32) / 1.8
    }
    
}

let temperaturaCDMX = Temperatura(celsius: 29.0)

let temperaturaCalifornia = Temperatura(farenheit: 72.0)

print("Temperatura California: \(temperaturaCalifornia.celsius) ºC")

//Tarea a mano
Buscar 3 aparatos electrodomesticos de la casa
    Buscar 10 atributos y 3 metodos
    De cada uno

