import SwiftUI

struct ContactNew: View {
    
    @Binding var friendsArray : [Friend]
    @State private var friendName = ""
    @State private var friendAge = 0
    @State private var friendNumber = 0
    @State private var isFav = false
    @State private var friendType = 0

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                TextField("Name", text: $friendName)
                TextField("Age", value: $friendAge, format: .number)
                TextField("Phone Number", value: $friendNumber, format: .number)
                Toggle("Favorite?", isOn: $isFav)
                
                HStack {
                    
                    Button("Save") {
                        
                        let newFriend = Friend(name: friendName, age: friendAge, phoneNumber: friendNumber, isFav: isFav)
                        
                        friendsArray.append(newFriend)
                        dismiss()
                        
                    }
                    Spacer()
                    
                    Button("Cancel", role: .destructive) {
                        dismiss()
                    }
                }
            }.navigationTitle("New Contact")
        }
    }
}

struct ContactNew_Previews: PreviewProvider {
    static var previews: some View {
        ContactNew(friendsArray: .constant([]))
    }
}
