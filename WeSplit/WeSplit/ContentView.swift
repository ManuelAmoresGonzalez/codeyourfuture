

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    
    let tipPercenteges = [10,15,20,25,0]
    @State private var button1 = false
    @State private var button2 = false
    @State private var button3 = false
    
    var totalPerPerson: (splitAccount: Double, totalAmount: Double) {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return (amountPerPerson, grandTotal)
    }
    
    var currencyFormatter: String{
        return Locale.current.currencyCode ?? "USD"
    }
    
    var body: some View {
        Button{
            button1 = true
            button2 = false
            button3 = false
        } label:{
            if button1 == true{
             Label("Learn More", systemImage: "book.fill")
                    .background(Color.orange)
            }else{
                Label("Learn More", systemImage: "heart.fill")
                    
            }
            
        }
        Button{
            button1 = false
            button2 = true
            button3 = false
        } label:{
            if button2 == true{
             Label("Learn More", systemImage: "book.fill")
                    .background(Color.orange)
                    
            }else{
                Label("Learn More", systemImage: "heart.fill")
                    
            }
        }
        Button{
            button1 = false
            button2 = false
            button3 = true
        } label:{
            if button3 == true{
             Label("Learn More", systemImage: "checkmark.circle.fill")
                    .background(Color.orange)
            }else{
                Label("Learn More", systemImage: "heart.fill")
            }
        }
        NavigationView{
            Form{
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: currencyFormatter))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                }
                Section{
                    Text("How much tip do you want to leave ?")
                    Picker("Tip Percentage", selection: $tipPercentage){
                        ForEach(0..<101, id: \.self){
                            Text($0, format: .percent)
                        }
                    }
                }header: {
                    Text("How much tip do you want to leave?")
                }
                Section{
                    Text(totalPerPerson.splitAccount, format: .currency(code: currencyFormatter))
                }header: {
                    Text("Price per Person")
                }
                
                Section{
                    Text(totalPerPerson.totalAmount, format: .currency(code: currencyFormatter))
                }header: {
                    Text("Price per Person")
                }
                
            }.navigationTitle("WeSplit")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            amountIsFocused = false
                        }
                    }
                }
        }
    }
}


/*
 struct ContentView: View {
     let students = ["Harry", "Hermione", "Ron"]
     @State private var selectedStudent = "Harry"
     var body: some View {
         Form{
             Picker("Selected your student", selection: $selectedStudent){
                 
                 ForEach(students, id: \.self){
                     Text($0)
                 }
             }
         }
     }
 }
 */

/*
 struct ContentView: View {
     @State private var name = ""
     var body: some View {
         Form{
             TextField("Enter your name", text: $name)
             Text("Your name is \(name)")
         }
     }
 }
 */


/*
struct ContentView: View {
    @State var tapCount = 0
    var body: some View {
        Button("Tap Count: \(tapCount)"){
            tapCount += 1
        }
        Text("Este: \(tapCount)")
    }
}*/


/*struct ContentView: View {
    var body: some View {
        
            NavigationView{
                Form{
                    Section{
                        Text("Hello, world")
                    }
                }
                .navigationTitle("SiwftUI")
                .navigationBarTitleDisplayMode(.inline)
            }

    }
}*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
