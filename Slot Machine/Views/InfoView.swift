//
//  InfoView.swift
//  Slot Machine
//
//  Created by Phoon Thet Pine on 29/10/23.
//

import SwiftUI

struct InfoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            LogoView()
            
            Spacer()
            
            Form {
                Section(header: Text("ABout the application")) {
                    FormRowView(firstItem: "Application", secondItem: "Slot Machine")
                    FormRowView(firstItem: "Platforms", secondItem: "iPhone, iPad, Mac")
                    FormRowView(firstItem: "Developer", secondItem: "Thet Pine")
                    FormRowView(firstItem: "Designer", secondItem: "Frederick")
                    FormRowView(firstItem: "Music", secondItem: "Dan Lebowitz")
                    FormRowView(firstItem: "Website", secondItem: "https://github.com/Thet9354")
                    FormRowView(firstItem: "Copyright", secondItem: "@ 2023 All rights reserved.")
                    FormRowView(firstItem: "Version", secondItem: "1.0.0")



                }
            }
            .font(.system(.body, design: .rounded))
        }
        .padding(.top, 40)
        .overlay(
            Button(action: {
                audioPlayer?.stop()
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark.circle")
                    .font(.title)
            }
                .padding(.top, 30)
                .padding(.trailing, 20)
                .accentColor(Color.secondary),
            alignment: .topTrailing
        )
        .onAppear(perform: {
            playSound(sound: "background-music", type: "mp3")
        })
    }
}

struct FormRowView: View {
    var firstItem: String
    var secondItem: String
    
    var body: some View {
        HStack {
            Text(firstItem)
                .foregroundColor(Color.gray)
            Spacer()
            Text(secondItem)
        }
    }
}

#Preview {
    InfoView()
}


