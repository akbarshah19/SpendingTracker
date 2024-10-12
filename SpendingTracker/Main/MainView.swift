//
//  MainView.swift
//  SpendingTracker
//
//  Created by Akbarshah Jumanazarov on 10/12/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Card()
                }
                .padding()
            }
            .navigationTitle("Credit cards")
            .toolbar(content: Toolbar)
        }
    }
    
    @ViewBuilder
    private func Card() -> some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Apple Blue Visa Card")
                .font(.title)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                Text("VISA")
                    .fontWeight(.heavy)
                    .italic()
                Spacer()
                Text("Balance: $10.00")
            }
            
            Text("1234 1234 1234 1234")
            
            Text("Credit Limit: $50.000")
        }
        .padding()
        .foregroundStyle(.white)
        .background {
            LinearGradient(colors: [.blue.opacity(0.6), .blue], startPoint: .top, endPoint: .bottom)
        }
        .clipShape(.rect(cornerRadius: 8))
    }
    
    @ToolbarContentBuilder
    private func Toolbar() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                
            } label: {
                Image(systemName: "plus")
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    MainView()
}
