let earthName = "Earth"
let earthMoons = 1
let earthOrbit = 365.26
let earthLife = true

let marsName = "Mars"
let marsMoons = 2
let marsOrbit = 686.97
let marsLife = false

// TYPICAL SETUP OF FUNCTION USING ALL FOUR PARAMETERS
// problem is it gets tedious very fast as we use the same info request for all

func planetInfo(name: String, moons: Int, orbit: Double, hasLife: Bool) {
    var moonNoun = "moon"
    if moons != 1 {
        moonNoun = "moons"
    }
    var hasLifeString = "has life"
    if !hasLife {
        hasLifeString = "does not have life"
    }
    print("\(name) has \(moons)\(moonNoun). Its orbit is \(orbit) days. It \(hasLifeString)")
}



planetInfo(name: earthName, moons: earthMoons, orbit: earthOrbit, hasLife: earthLife)
planetInfo(name: marsName, moons: marsMoons, orbit: marsOrbit, hasLife: marsLife)


// EXAMPLE OF USING TUPLE
// one way to make it more concise is by using tuples

let earth = ("Earth", 1, 365.26, true)
let mars = ("Mars", 2, 686.97, false)

func planetInfoTuple(planet: (String, Int, Double, Bool)){
    var moonNoun = "moon"
    if planet.1 != 1 {
        moonNoun = "moons"
    }
    var hasLifeString = "has life"
    if !planet.3 {
        hasLifeString = "does not have life"
    }
    print("\(planet.0) has \(planet.1)\(moonNoun). Its orbit is \(planet.2). It \(planet.3)")
}

planetInfoTuple(planet: earth)
planetInfoTuple(planet: mars)


// But that's still relatively laborsome. So consider Classes as a way to "encapsulate" several pieces of information into one object

class Planet {
    var name: String
    var numberOfMoons: Int
    var orbitalPeriod: Double
    var hasLife: Bool

    
    // initializer is a method called to create an instance of a class
    
    init(name: String, numberOfMoons: Int, orbitalPeriod: Double, hasLife: Bool){
        self.name = name
        self.numberOfMoons = numberOfMoons
        self.orbitalPeriod = orbitalPeriod
        self .hasLife = hasLife
    }
    
    func planetInfo() {
        var moonNoun = "moon"
        if self.numberOfMoons != 1 {
            moonNoun = "moons"
        }
        var hasLifeString = "has life"
        if !self.hasLife {
            hasLifeString = "does not have life"
        }
        print("\(self.name) has \(self.numberOfMoons) \(moonNoun). Its orbit is \(self.orbitalPeriod) days. It \(hasLifeString).")
    }
}


 // creating new planets
 // object is an instance of a class --> a thing that is the product of the class blueprint


let earth2 = Planet(name: "Earth", numberOfMoons: 1, orbitalPeriod: 365.26, hasLife: true)
let mars2 = Planet(name: "Mars", numberOfMoons: 2, orbitalPeriod: 685.97, hasLife: false)


// Methods: implementing the use of class, outside of a class?

func planetInfoObject(planet: Planet) {
    var moonNoun = "moon"
    if planet.numberOfMoons != 1 {
        moonNoun = "moons"
    }
    var hasLifeString = "has life"
    if !planet.hasLife {
        hasLifeString = "does not have life"
    }
    print("\(planet.name) has \(planet.numberOfMoons) \(moonNoun). Its orbit is \(planet.orbitalPeriod) days. It \(hasLifeString).")
}

planetInfoObject(planet: earth2)
planetInfoObject(planet: mars2)

earth2.planetInfo()
mars2.planetInfo()
