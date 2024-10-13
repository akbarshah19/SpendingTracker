//
//  MainView.swift
//  SpendingTracker
//
//  Created by Akbarshah Jumanazarov on 10/12/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var showAddCard = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                TabView {
                    ForEach(0..<5) { i in
                        Card()
                            .padding(.bottom, 50)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .frame(height: 300)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
            .navigationTitle("Credit cards")
            .toolbar(content: Toolbar)
            .fullScreenCover(isPresented: $showAddCard) {
                AddCardView()
            }
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
            .padding(.bottom)
            
            Text("1234 1234 1234 1234")
            
            Text("Credit Limit: $50.000")
        }
        .padding()
        .foregroundStyle(.white)
        .background {
            LinearGradient(colors: [.blue.opacity(0.6), .blue], startPoint: .top, endPoint: .bottom)
        }
        .clipShape(.rect(cornerRadius: 8))
        .padding()
    }
    
    @ToolbarContentBuilder
    private func Toolbar() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                showAddCard.toggle()
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
