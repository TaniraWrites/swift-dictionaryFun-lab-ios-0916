//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream : [String : String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    func names(forFlavor:String)->[String]{
        var iScream : [String] = [ ]
        for (people,flavors) in favoriteFlavorsOfIceCream{
            if flavors == forFlavor {
                iScream.append(people)
            } else if flavors == forFlavor {
                iScream.append(people)
            } else if flavors == forFlavor {
                iScream.append(people)
            } else {
                
            }
            
            
            
            
        }
        
        return iScream
        
    }
    
    
    
    
    // 3.
    func count(forFlavor: String) -> Int{
        var iScream : Int = 0
        var tempArray = [String]()
        for (people,flavor) in favoriteFlavorsOfIceCream{
            if forFlavor == flavor {
                tempArray.append(people)
                iScream = tempArray.count
            }
            
            
        }
        return iScream
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson:String)->String?{
        return favoriteFlavorsOfIceCream[forPerson]
        
    }
    
    
    
    
    
    
    // 5.
   
        func replace(name:String,flavor: String)->Bool{
            for (key,value) in favoriteFlavorsOfIceCream{
                if name == key {
                    favoriteFlavorsOfIceCream.updateValue(flavor, forKey: name)
                    return true
                }
            
        }
                return false
    }
    
    
    // 6.
        func remove(person:String)->Bool {
        for value in favoriteFlavorsOfIceCream.keys {
            if person == value {
                favoriteFlavorsOfIceCream.removeValue(forKey: person)
                return true
            }
        }
        return false
    }
    
    


    
    // 7.
    func numberOfAttendees()->Int{
        var guests : Int = 0
        
        guests = favoriteFlavorsOfIceCream.count
        
        return guests
    }

    
    
    
    
    
    
    
    // 8.
    
    func add(person:String, forFlavor:String)->Bool{
        if favoriteFlavorsOfIceCream[person] != person{
            favoriteFlavorsOfIceCream[person] = forFlavor
            return true
        }
        return false
    }

    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        var attendants: String = ""
        
        var count = 0
        
        
        for name in allNames {
            
            let flavor = favoriteFlavorsOfIceCream[name]
            
            if let flavor = flavor {
                
                count += 1
                
                if count < allNames.count {
                    
                    attendants.append("\(name) likes \(flavor)\n")
                    
                } else if count == allNames.count {
                    
                    attendants.append("\(name) likes \(flavor)")
                    
                }
            }
        }
        
        print(attendants)
        return attendants
        
    }
    
    
    
    
    
    

}
