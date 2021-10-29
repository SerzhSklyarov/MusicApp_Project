//
//  TabBar.swift
//  MusicApp_Project
//
//  Created by Wizzard Sklyarov on 2021. 10. 28..
//

import SwiftUI

struct TabBar: View {
    @State var current = 0
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView(selection: $current){
                
                LibraryView()
                    .tag(0)
                    .tabItem {
                        
                        Image(systemName: "square.stack.fill")
                        Text("Медиатека")
                    }
                
                Text("Радио")
                    .tag(1)
                    .tabItem {
                        
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                
                Text("")
                    .tag(2)
                    .tabItem {
                        
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")}
            }
            .accentColor(.red)
            MiniPlayer()
            })
        }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
