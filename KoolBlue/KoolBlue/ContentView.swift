//
//  ContentView.swift
//  KoolBlue
//
//  Created by Charlithia Palmer on 8/2/20.
//

import SwiftUI





struct ContentView: View {
    
    @State private var step = 1
    
    var body: some View {
        ZStack{
            Color("DarkShade")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
           
            VStack(spacing: 30){
                Text("Welcome to")
                    .font(.largeTitle)
                    .foregroundColor(Color("LightShade"))
                    .padding()
                    
                Text("4-in-1 Telecomm")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("LightShade"))
                
                GeometryReader{  geo in
                    HStack{
                        VStack(spacing: 40){
                            Image("P1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 450.0, height: 280.0)
                                .shadow(color: Color.gray, radius: 20, x: 0, y: 0)
                                .shadow(color: Color("DarkShade"), radius: 5, x: 1, y: 1)
                            Text("Learn More, Do More!")
                                .padding()
                                .animation(Animation.interpolatingSpring(stiffness: 40, damping: 7).delay(0.1))
                        }.frame(width:  geo.frame(in: .global).width / 1)
                        VStack(spacing: 40){
                            Image("P2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350.0, height: 280.0)
                                .shadow(color: Color.gray, radius: 20, x: 0, y: 0)
                                .shadow(color: Color("DarkShade"), radius: 5, x: 1, y: 1)
                            Text("Developing the Future!")
                                .padding()
                                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .animation(Animation.interpolatingSpring(stiffness: 40, damping: 7).delay(0.1))
                        }.frame(width:  geo.frame(in: .global).width / 1)
                        VStack(spacing: 40){
                            Image("P3")
                                .resizable()
                                .scaledToFit()
                                .shadow(color: Color.gray, radius: 20, x: 0, y: 0)
                                .shadow(color: Color("DarkShade"), radius: 5, x: 1, y: 1)
                                    .frame(width: 350.0, height: 260.0)
                            Text("Learn the future of ios development")
                                .padding()
                                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .animation(Animation.interpolatingSpring(stiffness: 40, damping: 7).delay(0.1))
                        }.frame(width:  geo.frame(in: .global).width / 1)
                      
                    }
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("LightShade"))
                    .font(.title)
                    .padding(.vertical, 60)
                    .frame(width:  geo.frame(in: .global).width * 3)
                    .frame(maxHeight: .infinity)
                    .offset(x: self.step == 1 ? geo.frame(in: .global).width : self.step == 2 ? 0 : -geo.frame(in: .global).width)
                    .position(x: 205.5, y: 250)
                    .offset(x: 2, y: 50.5)
                    .animation(Animation.interpolatingSpring(stiffness: 40, damping: 8))
                }
                HStack(spacing: 20){
                    Button(action: {self.step = 1}) {
                        Image(systemName: "circle.fill")
                            .padding()
                            .scaleEffect(step == 1 ? 1 : 0.65)
                            
                    }
                    
                    Button(action: {self.step = 2}) {
                        Image(systemName: "circle.fill")
                            .padding()
                            .scaleEffect(step == 2 ? 1 : 0.65)
                         
                    }
                    
                    
                    Button(action: {self.step = 3}) {
                        Image(systemName: "circle.fill")
                            .padding()
                            .scaleEffect(step == 3 ? 1 : 0.65)
                            
                    }
                
                  
                }
                .animation(.spring(dampingFraction: 0.5))
                .font(.largeTitle)
                .accentColor(Color("LightAccent"))
                
                Button(action: {}) {
                    HStack{
                        Text("Continue")
                        Image(systemName: "chevron.right")
                    }
                .padding(.horizontal)
                .padding()
                .background(Capsule().fill(Color("Accent2")))
                .accentColor(Color("LightAccent"))
                .opacity(step == 3 ? 1 : 0)
                .animation(.none)
                .scaleEffect(step == 3 ? 1 : 0.01)
                .animation(Animation.interpolatingSpring(stiffness: 50, damping: 10, initialVelocity: 10))

               
              }
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
