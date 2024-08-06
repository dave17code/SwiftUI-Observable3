//
//  ContentView.swift
//  Observable3
//
//  Created by Dave on 7/31/24.
//

//import SwiftUI
//
//class NumberCounter: ObservableObject {
//    @Published var number: Int = 0
//    
//    func increaseNumber() {
//        number += 1
//        print("number: ", number)
//    }
//}
//
//struct ContentView: View {
//    @ObservedObject var numberCounter = NumberCounter()
//    
//    var body: some View {
//        VStack {
//            Text("\(self.numberCounter.number)")
//            Button {
//                self.numberCounter.increaseNumber()
//            } label: {
//                Text("+1 버튼")
//            }
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
