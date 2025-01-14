//
//  ContentView.swift
//  Touchdown
//
//  Created by Mert Palas on 14.01.2025.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top,
                             UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 0)
                
                ScrollView(.vertical, showsIndicators: false, content:  {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 10)
                        
                        FooterView()
                            .padding(.horizontal)
                    }//: VSTACK
                })//: SCROLL
                
            }//:VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
