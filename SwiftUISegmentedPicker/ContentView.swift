//
//  ContentView.swift
//  SwiftUISegmentedPicker
//
//  Created by ramil on 28.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 0
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Picker(selection: $selected, label: Text("")) {
                        Text("Hola").tag(0)
                        Text("Hello").tag(1)
                        Text("Hallo").tag(2)
                        Text("Hi").tag(3)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
        }.navigationBarTitle("Segmented")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
