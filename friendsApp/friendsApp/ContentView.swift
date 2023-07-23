import SwiftUI

struct ContentView: View {
    
    @State private var friends: [Friend] = [
        Friend(name: "E.T.", age: 1000, phoneNumber: 039494837482, type: .alien),
        Friend(name: "John", age: 30, phoneNumber: 093846237454, type: .human),
        Friend(name: "Zog", age: 500, phoneNumber: 039492039467, type: .funnyAlien),
        Friend(name: "Sarah", age: 25, phoneNumber: 039494927401, type: .funnyHuman),
        Friend(name: "Alex", age: 28, phoneNumber: 039494534213, type: .human , isFav: true)
    ]
    
    @State private var newContact = false
    
    var body: some View {
        NavigationView{
            VStack {
                List {
                    ForEach($friends) { $friend in
                        NavigationLink {
                            ContactDetails(friends: $friend )
                        } label: {
                            HStack {
                                Text("\(friend.name)")
                                Spacer()
                                if friend.isFav {
                                    Text("❤️")
                                }
                            }
                        }
                    }
                }.navigationTitle("Contacts")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            newContact = true
                        } label: {
                            Image(systemName: "plus")
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
            .sheet(isPresented: $newContact) {
                ContactNew(friendsArray: $friends)
                    .presentationDetents([.medium])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
