//
//  ContentView.swift
//  KeepPills
//
//  Created by Byul Kang on 2023/11/22.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    @State private var todayDate = Date()

    var body: some View {
        Text(formatDate(date:todayDate))
    }
  
    func formatDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: date)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
