//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String:String] = [
            "Joe":"Peanut Butter and Chocolate",
         "Tim":"Natural Vanilla",
            "Sophie": "Mexican Chocolate",
            "Deniz": "Natural Vanilla",
            "Tom": "Mexican Chocolate",
            "Jim": "Natural Vanilla",
            "Susan": "Cookies 'N' Cream"
    ]
    
    
    
    // 2.
    
    func names(forFlavor flavor:String)->[String] {
        var people:[String] = []
        for (n,v) in favoriteFlavorsOfIceCream{
            if v == flavor {
                people.append(n)
            }
        }
        return people
    }
    
    
    
    
    // 3.
    
    func count(forFlavor flavor:String)->Int{
        var cnt:Int = 0
        for (_,v) in favoriteFlavorsOfIceCream{
            if v == flavor {
                cnt += 1
            }
        }
        return cnt
    }
    
    
    
    
    
    // 4.
    func flavor(forPerson person:String)->String?{
        var _flavor:String? = nil
        for (n,v) in favoriteFlavorsOfIceCream{
            if n == person {
                _flavor = v
            }
        }
        return _flavor
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor flv:String, forPerson person:String)->Bool{
        for (n,_) in favoriteFlavorsOfIceCream{
            if n == person {
                favoriteFlavorsOfIceCream[person] = flv
                return true
            }
        }
        /*if  favoriteFlavorsOfIceCream.updateValue(flv, forKey: person) != nil{
            return true
        } */
        
        return false
    }
    
    
    
    
    
    
    // 6.
    func remove(person _person:String)->Bool {
        if favoriteFlavorsOfIceCream.removeValue(forKey: _person) != nil{
            return true
        }
        return false
    }
    
    
    
    // 7.
    func numberOfAttendees()->Int{
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person _person:String, withFlavor flavor:String)->Bool{
        if favoriteFlavorsOfIceCream.updateValue(flavor, forKey: _person) == nil{
                return true
        }
        return false
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList()->String{
        var output:String = ""
        let listNames = favoriteFlavorsOfIceCream.keys.sorted()
        for name in listNames{
            for (name2,flv) in favoriteFlavorsOfIceCream{
                if name == name2{
                    output.append("\(name) likes \(flv)\n")
                }
            }
        }
        output.remove(at: output.index(before: output.endIndex))
        return output
    }
    
    
    
    
    
    
    
    

}
