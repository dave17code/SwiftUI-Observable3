//
//  StateObject.swift
//  Observable3
//
//  Created by Dave on 7/31/24.
//

import SwiftUI

class NumberCounter: ObservableObject {
    @Published var number: Int = 0
    
    func increaseNumber() {
        number += 1
        print("number: ", number)
    }
}

struct ChildView: View {
    @StateObject var numberCounter = NumberCounter()
    
    var body: some View {
        VStack {
            Text("\(self.numberCounter.number)")
            Button {
                self.numberCounter.increaseNumber()
            } label: {
                Text("+1 버튼")
            }
        }
    }
}

struct ContentView: View {
    @State var text: String = ""
    
    var body: some View {
        VStack {
            TextField("글자를 입력해주세요", text: $text)
            ChildView()
        }
    }
}

#Preview {
    ContentView()
}
