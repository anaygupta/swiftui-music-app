//
//  ContentView.swift
//  swiftui-music-app
//
//  Created by Anay on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var volume = 50.0
    @State var isActive = true

    
    var body: some View {
        
        VStack {
            
//            HStack {
//                Spacer()
//                Toggle("Active", isOn: $showActive)
//                    .toggleStyle(SwitchToggleStyle(tint: .purple))
//                Spacer()
//            }
//
            HStack {
                if self.isActive
                {
                    Text("Active")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
                else
                {
                    Text("Offline")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.red)
                }
                Spacer()
                Toggle("", isOn: $isActive)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(self.isActive ? Color.blue: Color.red, lineWidth: 2)
            )

            Rectangle()
                .foregroundColor(Color(UIColor.secondarySystemFill))
                .cornerRadius(20)
                .frame(height:320)
            
            Spacer()
            
            HStack {
                VStack(alignment: .leading)
                {
                    Text("Is There Someone Else")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Text("The Weeknd")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                Spacer()
            }
            
            Spacer()
            
            
            
            VStack {
                Rectangle()
                    .frame(height: 3)
                    .cornerRadius(3)
                    .foregroundColor(Color(UIColor.secondarySystemFill))
                
                HStack {
                    Text("0:00")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.tertiaryLabel))
                    Spacer()
                    Text("4:00")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.tertiaryLabel))
                }
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Image(systemName: "backward.fill")
                    .font(.system(size: 32))
                Spacer()
                Image(systemName: "play.fill")
                    .font(.system(size: 56))
                Spacer()
                Image(systemName: "forward.fill")
                    .font(.system(size: 32))
                Spacer()
            }
            
            Spacer()
            
            HStack(spacing: 12) {
                Image(systemName: "volume.fill")
                Slider(value: $volume, in: 0...100)
                Image(systemName: "volume.3.fill")
            }
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [.white, .teal]), startPoint: .top, endPoint: .bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
