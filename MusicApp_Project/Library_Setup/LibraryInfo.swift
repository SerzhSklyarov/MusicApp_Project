//
//  LibraryInfo.swift
//  MusicApp_Project
//
//  Created by Wizzard Sklyarov on 2021. 10. 30..
//

import SwiftUI

struct LibraryInfo: View {
    var body: some View {
            VStack {
                    Text("Ищете свою музыку?")
                        .font(.title2)
                        .fontWeight(.bold)
                
                Text("Здесь появится купленная Вами в iTunes Store музыка.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing], 28)
                    .foregroundColor(.secondary)
    }
            .navigationTitle("Медиатека")
            .padding()
            .frame(height: 600)
}
}

struct LibraryInfo_Previews: PreviewProvider {
    static var previews: some View {
        LibraryInfo()
    }
}
