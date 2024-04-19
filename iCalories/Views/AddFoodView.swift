//
//  AddFoodView.swift
//  iCalories
//
//  Created by Itkhld on 5.04.2024.
//

import SwiftUI

struct AddFoodView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var calories: Double = 0
    
    var body: some View {
        Text(". . .")
        Form {
            Section {
                TextField("Food name", text: $name)
                    
                
                VStack {
                    Text("Calories: \(Int(calories))")
                    Slider(value: $calories, in: 0...1000, step: 1)
                        .padding()
                }
                .padding()
                
                HStack {
                    Spacer()
                    Button("Submit") {
                        DataController().addFood(name: name, calories: calories, context: managedObjContext)
                        dismiss()
                    }
                    .padding()
                    Spacer()
                }
            }
        }
    }
}

struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodView()
    }
}
