//
//  ContentView.swift
//  LocalizedStringManagementWithStringsFileExplorer
//
//  Created by Kennedy Karimi on 13/08/2024.
//

import SwiftUI

/* You can use locazed string management in SwiftUI by using a Localizable.string file. SwiftUI then offers two main ways to access the string from the Localizable.string file:
    a) Using NSLocalizedString
    b) Using Bundle and localizedString(forKey:value:table:)
 These are covered within this project.
 */

///Localizable.strings

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(NSLocalizedString("greeting_message", comment: "The default greeting")) //Using NSLocalizedString. This function is similar to androids getResources(getString(R.string.resource_name))
            Button {
                
            } label: {
                Text(NSLocalizedString("cancel_button", comment: ""))
            }
            Button {
                
            } label: {
                Text(Bundle.main.localizedString(forKey: "save_button", value: nil, table: nil)) //Using Bundle and localizedString(forKey:value:table:)
            }
            Text(Bundle.main.localizedString(forKey: "goodbye_message", value: nil, table: nil))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
