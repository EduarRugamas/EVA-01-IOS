//
//  ContentView.swift
//  EVA01-IOS
//
//  Created by DEV EDUAR on 9/19/21.
//

import SwiftUI




struct ContentView: View {
    var body: some View {
        TabView {
            UniversidadesUI()
                .tabItem {
                    Image(systemName: "house")
                    Text("Universidades")
                }
                MuseosUI()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Museos")
                }
                
                TeatrosUI()
                    .tabItem {
                        Image(systemName: "house.circle")
                        Text("Teatros")
                    }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
