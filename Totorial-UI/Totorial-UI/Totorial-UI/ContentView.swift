//
//  ContentView.swift
//  Totorial-UI
//
//  Created by Judy Alshahrani on 24/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       VStack {
                  ProgressView(value: 5, total: 15)
                  HStack {
                      VStack(alignment: .leading) {
                          Text("Seconds Elapsed")
                              .font(.caption)
                          Label("300", systemImage: "hourglass.bottomhalf.fill")
                      }
                      Spacer()
                      VStack(alignment: .trailing) {
                          Text("Seconds Remaining")
                              .font(.caption)
                          Label("600", systemImage: "hourglass.tophalf.fill")
                      }
                  }
                  .accessibilityElement(children: .ignore)
                  .accessibilityLabel("Time remaining")
                  .accessibilityValue("10 minutes")
                  Circle()
                      .strokeBorder(lineWidth: 24)
                  HStack {
                      Text("Speaker 1 of 3")
                      Spacer()
                      Button(action: {}) {
                          Image(systemName: "forward.fill")
                      }
                      .accessibilityLabel("Next speaker")
                  }
              }
              .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
