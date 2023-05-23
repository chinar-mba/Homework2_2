//
//  ThirdView.swift
//  Homework2
//
//  Created by Chinara on 5/18/23.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        VStack {
            DeliveryLocation()
            Spacer()
            MenuDetail1()
            Spacer()
            TabBar1()
        }
        .navigationTitle("ThirdView")
    }
}
struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

struct MenuDetail1: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Paul")
                    .font(.system(size: 16))
                    .bold()
                Text("Fresh Pasta")
                    .font(.system(size: 10))
                    .foregroundColor(Color.gray)
                HStack {
                    Text("Delivery: FREE")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
                    Spacer()
                }
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 10, height: 9.54)
                        .foregroundColor(.black)
                    Text("4.5")
                        .font(.system(size: 12))
                        .bold()
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.gray)
                    Image(systemName: "clock")
                        .resizable()
                        .frame(width: 15, height: 15)
                    Text("25 min")
                        .font(.system(size: 12))
                        .bold()
                }
            }
            .padding(.all)
            
            Spacer()
            
            VStack {
                Image("image3")
                    .resizable()
                    .frame(width: 150, height: 150)
            }
        }
        .background(Color.white)
        .frame(width: 330, height: 130)
        .cornerRadius(30)
        .shadow(radius: 3)
        Spacer()
    }
}

struct TabBar1: View {
    
    
    var body: some View {
        VStack (spacing: 50) {
            TabView {
                Text("Home")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                Text("Wallet")
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("Wallet")
                    }
                
                Text("Comment")
                    .tabItem {
                        Image(systemName: "message")
                        
                        Text("Comment")
                    }
                
                Text("Profile")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
           
            .background(Color.black)
            
        }
        .background(Color.black)
        .frame(width: 335, height: 75)
        .background(Color.black)
        .cornerRadius(20)
        Spacer()
        .padding(.vertical)
    }
      
}

struct DeliveryLocation: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Choose delivery location")
                .padding(.trailing, 12)
                .padding(.top, 62)
                .foregroundColor(.black)
                .font(.system(size: 18))
                .bold()
            Spacer()
            HStack {
                Image("Delivery1")
                
                Button(action: {
                    // Button action
                }) {
                    Text("Deliver to current location")
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .bold()
                    
                }
            }
            Rectangle()
                .frame(width: 351, height: 1)
                .foregroundColor(.gray)
                .padding(.all)
            
            VStack(alignment: .leading, spacing: 10) {
                Spacer()
                HStack {
                    Image("Delivery2")
                    Button(action: {
                        //
                    }) {
                        Text("Deliver to different location")
                            .foregroundColor(.black)
                            .font(.system(size: 16))
                            .bold()
                    }
                }
                Spacer()
                Rectangle()
                    .frame(width: 351, height: 1)
                    .foregroundColor(.gray)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Saved addresses")
                    .foregroundColor(.black)
                    .font(.system(size: 18))
                    .bold()
                Spacer()
                HStack {
                    Image(systemName: "house")
                    Button(action: {
                        //
                    }) {
                        Text("Home")
                            .foregroundColor(.black)
                            .font(.system(size: 16))
                            .bold()
                    }
                    Spacer()
                        VStack  (alignment: .leading, spacing: 10){
                            Circle()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.gray)
                            Circle()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.gray)
                            Circle()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.gray)
                        }
                    }
                    Rectangle()
                        .frame(width: 351, height: 1)
                        .foregroundColor(.gray)
                }
            
            HStack {
                Image("work")
                Button(action: {
                    //
                }) {
                    Text("Work")
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .bold()
                }
                Spacer()
                VStack {
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                }
            }
            Rectangle()
                .frame(width: 351, height: 1)
                .foregroundColor(.gray)
            
            HStack {
                Image("hotel")
                Button(action: {
                    // 
                }) {
                    Text("Hotel")
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .bold()
                }
                Spacer()
                VStack {
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                }
            }
            
            Rectangle()
                .frame(width: 351, height: 1)
                .foregroundColor(.gray)
        }
    }
}
