//
//  ContentView.swift
//  UnitConversions
//
//  Created by Gustavo Araujo Santos on 22/03/22.
//

import SwiftUI

struct ContentView: View {
    @State private var valueInputUnit = 0.0
    @State private var selectedInputUnit = "meters"
    @State private var selectedOutputUnit = "meters"
    @FocusState private var valueInputIsFocused: Bool

    let units = ["meters", "kilometers", "feet", "yards", "miles"]

    var valueOutputUnit: Double {
        var valueInYards = 0.0

        //Conversion for yards
        switch selectedInputUnit {
        case "meters":
            valueInYards = valueInputUnit * 1.094
        case "kilometers":
            valueInYards = valueInputUnit * 1094
        case "feet":
            valueInYards = valueInputUnit / 3
        case "miles":
            valueInYards = valueInputUnit * 1760
        default:
            valueInYards = valueInputUnit
        }

        var value = 0.0
        //Conversion to output
        switch selectedOutputUnit {
        case "meters":
            value = valueInYards / 1.094
        case "kilometers":
            value = valueInYards / 1094
        case "feet":
            value = valueInYards * 3
        case "miles":
            value = valueInYards / 1760
        default:
            value = valueInYards
        }

        return value
    }

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Unit value", value: $valueInputUnit, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($valueInputIsFocused)

                    Picker("Selected input unit", selection: $selectedInputUnit) {
                        ForEach(units, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Enter the value and Select an input unit.")
                }

                Section {
                    Text(valueOutputUnit, format: .number)

                    Picker("Selected output unit", selection: $selectedOutputUnit) {
                        ForEach(units, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Select an output unit")
                }
            }
            .navigationTitle("UnitConversions")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()

                    Button("Done") {
                        valueInputIsFocused = false
                    }
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
