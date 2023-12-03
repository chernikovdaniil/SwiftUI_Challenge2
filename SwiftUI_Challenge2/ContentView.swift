//
//  ContentView.swift
//  SwiftUI_Challenge2
//
//  Created by Danil Chernikov on 03.12.2023.
//

import SwiftUI

#Preview {
    ContentView()
}

struct ContentView: View {
    var text: AttributedString = {
        var attributedString = AttributedString("Марафон по SwiftUI <<Отцовский пинок>>")
        attributedString.foregroundColor = .black
        
        let firstPartRange = attributedString.range(of: "Марафон")!
        attributedString[firstPartRange].foregroundColor = .gray
        
        let secondPartRange = attributedString.range(of: "<<Отцовский пинок>>")!
        attributedString[secondPartRange].font = .system(size: 26, weight: .bold, design: .default)
        attributedString[secondPartRange].foregroundColor = .blue
        
        return attributedString
    }()
    
    @State var rectangleWidth: CGFloat = 300
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text(text)
            }
            .frame(minHeight: 200)
            .fixedSize(horizontal: false, vertical: true)
            .frame(width: rectangleWidth, alignment: .leading)
            .border(.red.opacity(0.45), width: 1)
            
            Slider(value: $rectangleWidth, in: 100...300)
                .padding()
        }
    }
}
