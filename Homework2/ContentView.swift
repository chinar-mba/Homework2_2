//
//  ContentView.swift
//  Homework2
//
//  Created by Chinara on 5/16/23.
//

import SwiftUI


struct ContentView: View {
    @State var selectIndex: Int = 0
    @State var textFromTF: String = ""
    var iconArray: [Image] = [Image(systemName: "line.horizontal.3.decrease"),
                            Image("image4"),
                              Image("image5"),
                              Image("image6"),
                              Image("image7")]
    var iconTitle: [String] = ["Delivery", "Take Away Food", "Bell Service", "Delivery", "Price"]
    
    var body: some View {
        ZStack  {
            Color.white
                .ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 7) {
                    NavBarView()
                    
                    HStack {
                        ForEach(0..<5) { index in
                            HorizontalSliderView(image: iconArray[index],
                                                 title: iconTitle[index], isSelect: selectIndex == index)
                            .padding()
                            .onTapGesture {
                                selectIndex = index
                            }
                            
                            
                        }
                        
                    }
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
        HStack (alignment: .center) {
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
            .padding(.trailing, 100)
            Spacer()
            Button {
                self.showNextScreen = true
            } label: {
                VStack {
                    Text("Delivering to")
                        .foregroundColor(.gray)
                    HStack {
                        NavigationLink(destination: ThirdView()) {
                            Text ("ManasAve")
                                .foregroundColor(.black)
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
        VStack {
            TabView {
                Text("Home")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                        Color.black
                    }
                    .padding()
                Text("Wallet")
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("Wallet")
                        Color.black
                    }
                    .padding()
                
                Text("Comment")
                    .tabItem {
                        Image(systemName: "message")
                        
                        Text("Comment")
                        Color.black
                    }
                    .padding()
                
                Text("Profile")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                        Color.black
                    }
                    .padding()
            }
           
            .background(Color.black)
            
        }
        .background(Color.black)
        .foregroundColor(.black)
        .frame(width: 335, height: 75)
        .background(Color.black)
        .cornerRadius(20)
        Spacer()
      
    }
      
}


struct HorizontalSliderView: View {
    var image: Image
    var title: String
    var isSelect: Bool
    
    var body: some View {
        HStack {
            image
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(isSelect ? .white : .black)
            
            if isSelect {
                Text(title)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
        }
        .frame(width: isSelect ? 100 : 30, height: 40)
        .background(isSelect ? .gray : .clear)
        .foregroundColor(isSelect ? .white : .black)
        .cornerRadius(10)
        
        
    }
}
