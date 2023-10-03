
import SwiftUI

struct User: Identifiable {
    var id = "Taylor Swift"
}

struct ContentView: View {
    @State private var selectedUser: User? = nil
    @State private var isShowingUser = false
    
    var body: some View {
        Text("Hello world")
            .onTapGesture {
                selectedUser = User()
                isShowingUser = true
            }
            .alert("Welcome", isPresented: $isShowingUser, presenting: selectedUser) { user in
                Button(user.id) { }
            }
    }
}

#Preview {
    ContentView()
}
