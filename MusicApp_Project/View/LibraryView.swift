//
//  LibraryView.swift
//  MusicApp_Project
//
//  Created by Wizzard Sklyarov on 2021. 10. 27..
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        
        NavigationView{
                
            VStack {
                HStack{
                    Text("Ищете свою музыку?")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .padding(1)
                Text("Здесь появится купленная Вами в iTunes Store музыка.")
                    .foregroundColor(Color.gray)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .frame(width: 280)
            }
            .navigationTitle("Медиатека")
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
