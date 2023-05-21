//
//  ContentView.swift
//  Homework2
//
//  Created by Chinara on 5/16/23.
//

import SwiftUI


struct ContentView: View {
    
    @State var textFromTF: String = ""
  
    
    var body: some View {
        ZStack  {
            Color.white
                .ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 10) {
                    NavBarView()
                    DeliveryMenu()
                    Text("56 stores open")
                    
                    
                    SearchBarView(textFromTF: $textFromTF)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<3) { result in
                                MenuSelectView()
                            .padding(5)
                            }
                            
                        }
                    }
                    .padding(5)
                    
                    MenuDetail()
                    TabBar()
                   
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
        
struct NavBarView: View {
    @State private var showNextScreen = false
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                VStack {
                    Image(systemName: "line.horizontal.3.decrease")
                        .resizable()
                        .frame(width: 20, height: 17)
                        .foregroundColor(.black)
                }
            }
            .padding(.all)
            Spacer()
            Button {
                self.showNextScreen = true
            } label: {
                VStack {
                    Text("Delivering to")
                    
                    HStack {
                        NavigationLink(destination: ThirdView()) {
                            Text ("ManasAve")
                            Image(systemName: "square.and.arrow.down.fill")
                            
                        }
                    }
                        .sheet(isPresented: $showNextScreen) {
                            ThirdView()
                                .foregroundColor(.black)
                        }
                        
                    }
                    Spacer()
                    Button {
                        //
                    } label: {
                        VStack {
                            Image("basket")
                                .resizable()
                                .frame(width: 20, height: 15)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.all)
                    .background(.black)
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .frame(width: 50, height: 47)
                    
                }
            }
        }
    }

        struct SearchBarView: View {
            @Binding var textFromTF: String
            
            var body: some View {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Find restaurant by name", text: $textFromTF)
                    }
                    .padding(.all)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: 3)
                    
                    
                    
                    Button {
                        //
                    } label: {
                        VStack {
                            Image("vector1")
                                .resizable()
                                .frame(width: 24, height: 7.5)
                                .foregroundColor(.black)
                            Image("vector2")
                                .resizable()
                                .frame(width: 24, height: 7.5)
                                .foregroundColor(.black)
                            Image("vector1")
                                .resizable()
                                .frame(width: 24, height: 7.5)
                                .foregroundColor(.black)
                        }
                        .padding()
                    }
                    
                }
            }
        }
        
        struct MenuSelectView: View {
            var body: some View {
                VStack {
                    Image("image1")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Text("Tony Roma's")
                        .font(.system(size: 16))
                        .bold()
                    Text("Ribs&Steaks")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
                    Text("Delivery: FREE")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
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
                        Text("35 min")
                            .font(.system(size: 12))
                            .bold()
                    }
                }
                
                
                .background(.white)
                .frame(width: 150, height: 230)
                .cornerRadius(20)
                .shadow(radius: 3)
                
                VStack {
                    Image("image2")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Text("Momos")
                        .font(.system(size: 16))
                        .bold()
                    Text("Japanese")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
                    Text("Delivery: FREE")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
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
                        Text("35 min")
                            .font(.system(size: 12))
                            .bold()
                    }
                }
                
                
                .background(.white)
                .frame(width: 150, height: 230)
                .cornerRadius(20)
                .shadow(radius: 3)
                
                
                VStack {
                    Image("image3")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Text("Tony Roma's")
                        .font(.system(size: 16))
                        .bold()
                    Text("Ribs&Steaks")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
                    Text("Delivery: FREE")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
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
                        Text("35 min")
                            .font(.system(size: 12))
                            .bold()
                    }
                }
                
                
                .background(.white)
                .frame(width: 150, height: 230)
                .cornerRadius(20)
                .shadow(radius: 3)
            }
        }
        
struct MenuDetail: View {
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

struct TabBar: View {
    
    
    var body: some View {
        VStack (spacing: 20) {
            TabView {
                Text("Home")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                        Color.black
                    }
                
                Text("Wallet")
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("Wallet")
                        Color.black
                    }
                
                Text("Comment")
                    .tabItem {
                        Image(systemName: "message")
                        
                        Text("Comment")
                        Color.black
                    }
                
                Text("Profile")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                        Color.black
                    }
            }
           
            .background(Color.black)
            
        }
        .foregroundColor(.black)
        .frame(width: 335, height: 75)
        .background(Color.black)
        .cornerRadius(20)
        Spacer()
        .padding(.vertical)
    }
      
}


struct DeliveryMenu: View {
    @State private var showAlert = false
    var body: some View {
        HStack(spacing: 12) {
            VStack{
                Button {
                    //
                } label: {
                    VStack {
                        Image(systemName: "minus")
                            .resizable()
                            .frame(width: 14, height: 1)
                            .foregroundColor(.white)
                            .cornerRadius(1)
                        Image(systemName: "minus")
                            .resizable()
                            .frame(width: 13, height: 1)
                            .foregroundColor(.white)
                            .cornerRadius(1)
                        
                        Image(systemName: "minus")
                            .resizable()
                            .frame(width: 13, height: 1)
                            .foregroundColor(.white)
                            .cornerRadius(1)
                    }
                    Text("Delivery")
                        .font(.system(size: 10))
                        .foregroundColor(.white)
                }
                .padding(.all)
                .background(Color.black)
                .cornerRadius(30)
                .shadow(radius: 3)
                .frame(width: 98, height: 47)
                
            }
            
            VStack {
                Button {
                 showAlert = true
                } label: {
                    Image("image4")
                    Text("Menu")
                      
                    
                }
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 3)
            .frame(width: 50, height: 47)
            
            VStack (spacing: 14) {
                Button {
                    //
                } label: {
                    Text("Hot meals")
                    Image("image5")
                }
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 3)
            .frame(width: 50, height: 47)
            
            VStack(spacing: 10) {
                Button {
                    //
                } label: {
                    Text("Delivery")
                    Image("image6")
                }
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 3)
            .frame(width: 50, height: 47)
            
            VStack(spacing: 20) {
                Button {
                    //
                } label: {
                    Text("Discount")
                    Image("image7")
                    Text("%")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                }
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 3)
            .frame(width: 50, height: 47)
            
        }
        .padding(.all)
    }
}
