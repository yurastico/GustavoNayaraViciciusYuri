//
//  SettingsView.swift
//  ComprasUSA
//
//  Created by Yuri Cunha on 15/12/23.
//

import SwiftUI

enum UserSettings {
    static let iof = AppStorage(wrappedValue: 0.0538, "IOF")
    static let dollar = AppStorage(wrappedValue: 4.90, "dollar")
}

struct SettingsView: View {
    @AppStorage("dollar") private var dollar: Double = 4.90
    @AppStorage("IOF") private var iof: Double = 0.0538
    @FocusState var isInputActive:Bool
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Cotação do dólar (R$)") {
                    TextField("R$ 0.0",value: $dollar, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($isInputActive)
                }
                
                Section("IOF (%)") {
                    TextField("0%",value: $iof, format: .percent)
                        .keyboardType(.decimalPad)
                        .focused($isInputActive)
                        
                        
                }
            }
            .navigationTitle("Ajustes")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        isInputActive = false
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}



