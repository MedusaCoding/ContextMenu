//
//  ContentView.swift
//  ContextMenu
//
//  Created by Ronan Chenay on 05/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var Objet = "Objet     ▼"
    
    var body: some View {
        
                    ZStack{
                        Rectangle()
                            .fill(Color.blue)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .edgesIgnoringSafeArea(.all)
            
                            VStack{
                
                                Menu("\(Objet)".uppercased()) {
            
                                Button("Amazon", action: { sortAmazon() })
                                Button("Canal +", action: { sortCanal() })
                                Button("Canva", action: { sortCanva() })
                                Button("Deezer", action: { sortDeezer() })
                                Button("Discord", action: { sortDiscord() })
                                }
            
                        .padding(.trailing,4)
                        .font(.system(size: 15))
                        .frame(width: 120, height: 5)
                        .padding()
                        .foregroundColor(.blue)
            
                        .font(.headline)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                            }
        
                    } // VStack
                } // ZStack
    
                // Objet //
            
            func sortAmazon() {
                self.Objet = "Amazon"
            }
            
            func sortCanal() {
                self.Objet = "Canal +"
            }
            
            func sortCanva() {
                self.Objet = "Canva"
            }
            
            func sortDeezer() {
                self.Objet = "Deezer"
            }
            func sortDiscord() {
                self.Objet = "Discord"
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
