//
//  SplashView.swift
//  Chrono
//
//  Created by Sagar on 2021-06-21.
//

import SwiftUI


struct SplashScreen: View {
    
    @State var isActive:Bool = false

    var body: some View {
        VStack {
            if self.isActive {
                TabBar()
            } else {
                SplashView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
    
}

struct SplashView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(hex: "7E51FF"), Color(hex: "0E1C9F")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            Image("Logo")
                .padding()
                .offset(x: 0, y: -40.0)
                
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
