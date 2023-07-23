//
//  friendsStruct.swift
//  friendsApp
//
//  Created by mohmmed adel on 23/07/2023.
//

import Foundation

enum FriendType {
    case alien , human , funnyAlien , funnyHuman
}

struct Friend : Identifiable {
    
    var id = UUID()
    var name : String
    var age : Int
    var phoneNumber : Int
    var type : FriendType
    var isFav = false
    
}
