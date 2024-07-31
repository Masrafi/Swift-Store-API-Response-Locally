//
//  Store_API_Response_LocallyApp.swift
//  Store API Response Locally
//
//  Created by Masrafi Anam on 31/7/24.
//

import SwiftUI
import SwiftData


@main
struct Store_API_Response_LocallyApp: App {
    let container: ModelContainer
        var body: some Scene {
            WindowGroup {
                UserListView()
                    .environmentObject(UserListViewModel(modelContext: container.mainContext))
                    .modelContainer(container)
            }
        }
        
        init() {
            do {
                container = try ModelContainer(for: UserModel.self)
            } catch {
                fatalError("Failed to create ModelContainer for UserModel.")
            }
        }
}
