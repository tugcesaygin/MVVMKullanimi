//
//  ContentView.swift
//  MVVMKullanimi
//
//  Created by Tuğçe Saygın on 13.03.2024.
//

import SwiftUI

struct Anasayfa: View {
    
    @State private var tfSayi1 = ""
    @State private var tfSayi2 = ""
    @State private var sonuc = "0"
    
    
    var body: some View {
        VStack(spacing:20) {
            
            Text(sonuc).font(.system(size: 50))
            TextField("Sayi 1",text: $tfSayi1)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Sayi 2" , text: $tfSayi2)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            
            HStack(spacing:50){
                Button("TOPLAMA"){
                    if let sayi1 = Int(tfSayi1) , let sayi2 = Int(tfSayi2){
                        let toplam = sayi1 + sayi2
                        sonuc = String(toplam)
                    }
                }
                Button("ÇARPMA"){
                    if let sayi1 = Int(tfSayi1) , let sayi2 = Int(tfSayi2){
                        let carpma = sayi1 * sayi2
                        sonuc = String(carpma)
                    }
                }
            }
         
        }
        
    }
}

#Preview {
    Anasayfa()
}
