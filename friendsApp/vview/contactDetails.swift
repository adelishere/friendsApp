//
//  contactDetails.swift
//  friendsApp
//
//  Created by mohmmed adel on 23/07/2023.
//

import SwiftUI

struct contactDetails: View {
    
    @Binding var friends : Friend
    
    var body: some View {
        
        VStack{
            
            NavigationView{
                
                
                Form{
                    
                    TextField("name" , text: $friends.name)
                    TextField("age" , value:$friends.age , format:.number)
                    TextField("phone number" , value:$friends.phoneNumber , format:.number)
                    Toggle("add to favorites?" , isOn: $friends.isFav)

                }.navigationTitle("contact details")
                

            }
            
        }
        
    }
}

struct contactDetails_Previews: PreviewProvider {
    static var previews: some View {
        contactDetails(friends: .constant(Friend(name: "name", age: 22, phoneNumber: 228940356484, type: .alien)))
    }
}
