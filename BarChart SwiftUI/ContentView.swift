//
//  ContentView.swift
//  BarChart SwiftUI
//
//  Created by Saif on 04/10/19.
//  Copyright © 2019 LeftRightMind. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickerSelectedItem: Int = 0
    @State var dataPoints: [[CGFloat]] = [
        [140,80,180,70,140],
        [120,70,140,80,180],
        [170,60,110,180,70]
    ]
    
    var body: some View {
        ZStack {
            Color("appBackground").edgesIgnoringSafeArea(.all)
            VStack {
                Text("My Chart")
                .foregroundColor(Color("title"))
                    .font(.system(size:34))
                    .fontWeight(.heavy)
                
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Prashant").tag(0)
                    Text("Aman").tag(1)
                    Text("Payal").tag(2)
                }
                .font(.system(size:20))
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal,24)
                
                HStack(spacing:30) {
                    BarChart(barValue: dataPoints[pickerSelectedItem][0])
                    BarChart(barValue: dataPoints[pickerSelectedItem][1])
                    BarChart(barValue: dataPoints[pickerSelectedItem][2])
                    BarChart(barValue: dataPoints[pickerSelectedItem][3])
                    BarChart(barValue: dataPoints[pickerSelectedItem][4])
                }
                .padding(.top,24)
                .animation(.default)
                
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BarChart: View {
    
    var barValue: CGFloat = 0
    
    var body : some View {
        VStack {
            ZStack(alignment: .bottom) {
                Capsule().frame(width: 30, height: 200)
                    .foregroundColor(Color(#colorLiteral(red: 0.3936573267, green: 0.8918792605, blue: 0.7495730519, alpha: 1)))
                Capsule().frame(width: 30, height: barValue)
                    .foregroundColor(.white)
            }
            
            
            Text("D")
                .padding(.top,8)
        }
    }
}
