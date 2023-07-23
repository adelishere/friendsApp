import SwiftUI

struct ContactDetails: View {
    
    @Binding var friends: Friend
    
    var body: some View {
        
        VStack {
            
            NavigationView {
                
                Form {
                    
                    TextField("Name", text: $friends.name)
                    TextField("Age", value: $friends.age, format: .number)
                    TextField("Phone Number", value: $friends.phoneNumber, format: .number)
                    Toggle("Add to Favorites?", isOn: $friends.isFav)
                }.navigationTitle("Contact Details")
            }
        }
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(friends: .constant(Friend(name: "name", age: 22, phoneNumber: 228940356484)))
    }
}
