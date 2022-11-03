//
//  ContentView.swift
//  ConversionTemperature
//
//  Created by Manuel Enrique Amores Gonzalez on 2/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var inputTypeUser = 0
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Text("Hola")
                }header: {
                    Text("Element to change")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
