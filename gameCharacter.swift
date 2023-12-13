// create a game character class with certain properties and func
class gameCharacter {
    //game character attributes and details
    var name:String = ""
    var gender:String = ""
    var tier:Int = 0
    var weapon_specialty:String = ""
    var armor:String = ""
    //in game interacttible attributes
    var hit_points:Int 
    var mana_points:Int 
    var weapon:String = ""
    var defense:Int = 0
    
    //initiallizer or constructor
    init(name:String,gender:String,tier:Int,hit_points:Int,mana_points:Int,weapon_specialty:String,weapon:String){
        self.name = name
        self.gender = gender
        self.tier = tier
        self.hit_points = hit_points
        self.mana_points = mana_points
        self.weapon_specialty = weapon_specialty
        self.weapon = weapon
    }
    
    func displayInfo(){
        print("Name: \(name)")
        print("Gender: \(gender)")
        print("tier: \(tier)")
        print("Weapon specialty: \(weapon_specialty)")
    }
    func takedamage(damage:Int){
        let damgecal:Int = damage - defense
        hit_points = hit_points - damgecal
        if(hit_points != 0){
             print("\(name) - Current health:\(hit_points)")
        } else {
            print("\(name) is dead")
        }
    }
    func castspell(manacost:Int){
    if(manacost <= mana_points){
        mana_points = mana_points - manacost
        print("\(name) - Current mana:\(mana_points)")
    } else {
        print("insufficient mana")
        }
    }
    func equip_weapon(equipedweapon:String){
        weapon = equipedweapon
        print("Weapon Equiped:\(weapon)")
    }
    func equip_armor(armor_name:String,defense_points:Int){
        armor = armor_name
        defense = defense_points
        print("Armor Equiped:\(armor) +\(defense_points) defense")
    }
}
let jekka = gameCharacter(name:"Jekka Hufalar",gender:"Female",tier:4,hit_points:120,mana_points:100,weapon_specialty:"keyboard",weapon:"")
jekka.displayInfo()
jekka.takedamage(damage:10)
jekka.castspell(manacost:50)
jekka.equip_weapon(equipedweapon:"lenovo keyboard")
jekka.equip_armor(armor_name:"lenovo Armor",defense_points:10)
jekka.takedamage(damage:30)
print(" ")
let clemente = gameCharacter(name:"Clemente Lise",gender:"Female",tier:5,hit_points:100,mana_points:100,weapon_specialty:"laptop",weapon:"")
clemente.displayInfo()
clemente.takedamage(damage:10)
clemente.castspell(manacost:70)
clemente.equip_weapon(equipedweapon:"Ryzen Laptop")
print(" ")
let timothy = gameCharacter(name:"Timothy Angway",gender:"male",tier:5,hit_points:100,mana_points:100,weapon_specialty:"pc",weapon:"")
timothy.displayInfo()
timothy.takedamage(damage:10)
timothy.castspell(manacost:110)
timothy.equip_weapon(equipedweapon:"Potato PC")


