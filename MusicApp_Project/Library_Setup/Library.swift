//
//  Library.swift
//  MusicApp_Project
//
//  Created by Wizzard Sklyarov on 2021. 10. 30..
//

import SwiftUI

struct Library: View {
    
    @State var isEditMode = EditMode.active
    @State private var models = ModelLibrary.data
    @State private var multiSelection = Set<UUID>()
        
        var body: some View {
            VStack {
                VStack {
                    List (selection: $multiSelection) {
                        ForEach(models, id: \.id) { model in
                            HStack {
                                Image(systemName: model.image)
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(.red)
                                    .frame(width: 25, height: 25)
                                    .padding(9)
                                Text(model.title)
                                    .foregroundColor(.black)
                                    .font(.system(size: 23))
                                    .fontWeight(.medium)
                            }
                        }
                        .onMove(perform: move)
                    }
                    .frame(height: 640)
                    .listStyle(PlainListStyle())
                }
                .environment(\.editMode, $isEditMode)
            }
        }
        
        func move(from source: IndexSet, to destination: Int) {
            models.move(fromOffsets: source, toOffset: destination)
        }
}

struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library()
    }
}
