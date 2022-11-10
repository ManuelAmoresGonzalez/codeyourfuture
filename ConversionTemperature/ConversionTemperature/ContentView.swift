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
        CustomController()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomController: UIViewControllerRepresentable{
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CustomController>) -> UIViewController {
        let storyBoard = UIStoryboard(name: "Test", bundle: Bundle.main)
        let controller = storyBoard.instantiateViewController(withIdentifier: "Home")
        return controller
    }
    
   func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CustomController>) {
        print("ola")
    }
}
