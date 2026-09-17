import SwiftUI
import Playgrounds

struct AttendedView: View {
    @State private var shows: [Show] = []
    var body: some View {
        NavigationStack {
            List(shows){ show in
                Text(show.artistName)
            }
            .navigationTitle("Attended")
            .toolbar{
                Button("Add Show", systemImage: "plus"){
                    shows.append(Show(
                        artistName: "Radiohead", venueName: "MSG", city: "NY", status: .attended
                    ))
                }
            }
        }
    }
}

#Preview {
    AttendedView()
}
