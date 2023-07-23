//
//  ContentView.swift
//  friendsApp
//
//  Created by mohmmed adel on 23/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var friends: [Friend] = [
        Friend(name: "E.T.", age: 1000, phoneNumber: 039494837482, type: .alien),
        Friend(name: "John", age: 30, phoneNumber: 093846237454, type: .human),
        Friend(name: "Zog", age: 500, phoneNumber: 039492039467, type: .funnyAlien),
        Friend(name: "Sarah", age: 25, phoneNumber: 039494927401, type: .funnyHuman),
        Friend(name: "Alex", age: 28, phoneNumber: 039494534213, type: .human , isFav: true)
    ]

    
    
    var body: some View {
        
        NavigationView{
            
            VStack {
                
                List {
                    ForEach($friends) { $friend in
                        NavigationLink{
                            
                            contactDetails(friends: $friend )
                            
                        }label:{
                            HStack{
                                Text("\(friend.name)")
                            }
                            
                            
                            HStack{
                                Spacer()
                                if friend.isFav {
                                    Text("❤️")
                                }

                            }
                        }
                    }

                }

            }.navigationTitle("Contacts")

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
