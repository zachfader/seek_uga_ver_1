//
//  seek_uga_ver_1App.swift
//  seek_uga_ver_1
//
//  Created by Zach Fader on 10/16/24.
//

import SwiftUI

@main
struct seek_uga_ver_1: App {
    //Select immersionStyle
    @State private var immersionStyle: ImmersionStyle = .full
    var body: some Scene {
        
        //Always-present UI window to allow for nagivation
        WindowGroup {
            ContentView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.georgiaClay.ignoresSafeArea())
                .opacity(0.7)
        }
        
        //Structs to contain each immersive view
        ImmersiveSpace(id: "TatePlayer360") {

            TateVideo360EntityTestRV()
        }.immersionStyle(selection: $immersionStyle, in: .full)

        ImmersiveSpace(id: "MLCPlayer360") {
            //struct with the RealityView
            MLCVideo360EntityTestRV()
        }.immersionStyle(selection: $immersionStyle, in: .full)
        
        ImmersiveSpace(id: "SanfordPlayer360") {
            //struct with the RealityView
            SanfordVideo360EntityTestRV()
        }.immersionStyle(selection: $immersionStyle, in: .full)

        ImmersiveSpace(id: "BrumbyPlayer360") {
            //struct with the RealityView
            BrumbyVideo360EntityTestRV()
        }.immersionStyle(selection: $immersionStyle, in: .full)

    }
}
