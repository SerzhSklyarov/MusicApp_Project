//
//  ModelLibrary.swift
//  MusicApp_Project
//
//  Created by Wizzard Sklyarov on 2021. 10. 29..
//

import SwiftUI

struct ModelLibrary: Identifiable, Hashable{
    let id = UUID()
    var image: String
    var title: String
}

extension ModelLibrary {
    
    static let data = [
        
        ModelLibrary(image: "music.note.list", title: "Плейлисты"),
        ModelLibrary(image: "music.mic", title: "Артисты"),
        ModelLibrary(image: "rectangle.stack", title: "Альбомы"),
        ModelLibrary(image: "music.note", title: "Песни"),
        ModelLibrary(image: "airplayvideo", title: "Телешоу и фильмы"),
        ModelLibrary(image: "tv.music.note.fill", title: "Видеоклипы"),
        ModelLibrary(image: "guitars", title: "Жанры"),
        ModelLibrary(image: "doc", title: "Сборники"),
        ModelLibrary(image:  "music.note", title: "Авторы"),
        ModelLibrary(image: "square.and.arrow.down", title: "Загружено"),
        ModelLibrary(image: "house", title: "Домашняя коллекция")
    ]
}
