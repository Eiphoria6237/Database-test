//
//  FireBase1App.swift
//  FireBase1
//
//  Created by LIU SHURUI on 2021/04/08.
//

import SwiftUI
import Firebase

@main
struct FireBase1App: App {

    init() {
        FirebaseApp.configure()
        makeReservation()
    }
    
    func makeReservation() {
        let db = Firestore.firestore()
        let reservations = db.collection("reservations")
        db.collection("shifts")
        
        reservations.document("test123").setData(["name":"Carla", "people":22])
        
        reservations.document().setData(["name":"Sue"])
        
        reservations.addDocument(data: ["name":"Tom", "people":10])
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
