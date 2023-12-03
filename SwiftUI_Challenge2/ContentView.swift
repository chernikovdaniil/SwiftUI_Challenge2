//
//  ContentView.swift
//  SwiftUI_Challenge2
//
//  Created by Danil Chernikov on 03.12.2023.
//

import SwiftUI

struct ContentView: View {
    // Марафон по SwiftUI
    var topText: AttributedString = {
        let firstPart = "Марафон"
        let secondPart = "по SwiftUI"
        
        var attributedString = AttributedString("Марафон по SwiftUI")
        attributedString.font = .system(size: 13)
        attributedString.foregroundColor = .black
        
        let firstPartRange = attributedString.range(of: "Марафон")!
        attributedString[firstPartRange].foregroundColor = .gray
        
        return attributedString
    }()
    
    var bottomText: AttributedString = {
        var attributedString = AttributedString(#"<<Отцовский пинок>>"#)
        attributedString.font = .system(size: 24, weight: .bold, design: .default)
        attributedString.foregroundColor = .blue
        
        return attributedString
    }()
    
    @State var rectangleWidth: CGFloat = 300
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text(topText)
                Text(bottomText)
            }
            .frame(height: 150)
            .fixedSize(horizontal: false, vertical: true)
            .frame(width: rectangleWidth)
            .border(.red.opacity(0.45), width: 1)
            
            Slider(value: $rectangleWidth,
                   in: 100...300) { _ in }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
