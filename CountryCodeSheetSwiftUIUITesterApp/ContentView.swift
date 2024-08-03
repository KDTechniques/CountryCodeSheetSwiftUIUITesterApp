//
//  ContentView.swift
//  CountryCodeSheetSwiftUIUITesterApp
//
//  Created by Mr. Kavinda Dilshan on 2024-08-04.
//

import SwiftUI
import CountryCodeSheetSwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = true
    @State private var selectedCountryCode: CountryModel?
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Toggle") {
                isPresented.toggle()
            }
            
            if let selectedCountryCode {
                VStack(alignment: .leading) {
                    Text("Name: \(selectedCountryCode.name)")
                    Text("Dial Code: \(selectedCountryCode.dialCode)")
                    Text("Flag: \(selectedCountryCode.flag)")
                    Text("Country Code: \(selectedCountryCode.countryCode)")
                }
            }
        }
        .sheet(isPresented: $isPresented) {
            CountryCodeSheetView(isPresented: $isPresented, selectedCountryCode: $selectedCountryCode)
        }
    }
}

#Preview {
    ContentView()
}
