//
//  ContentView.swift
//  travel-app
//
//  Created by Jose Luna on 25/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea(.all)
            VStack{
                Header()
                Filter()
                ZStack(alignment: .top) {
                    Color("dirtyWhite")
                    VStack {
                        CardContainer()
                        VStack {
                            HStack(alignment: .top){
                                Text("Top Destinations")
                                    .fontWeight(.bold)
                                Spacer()
                                Text("View All")
                                    .foregroundColor(Color("primary"))
                            }.padding(.horizontal)
                            HStack(spacing: 10) {
                                LittleCard()
                                Spacer()
                                LittleCard()
                            }
                            .padding(.all)
                        }
                    }
                }
                
                Spacer()
                NavigationBttom()
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            ZStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color("whiteApp"))
                    .cornerRadius(10)
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .foregroundColor(Color("secondary"))
            }
            Spacer()
            Text("DISCOVER")
                .fontWeight(.bold)
                .foregroundColor(Color("secondary"))
            Spacer()
            ZStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color("whiteApp"))
                    .cornerRadius(10)
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .foregroundColor(Color("secondary"))
            }
            
        }
    }
}

struct Filter: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .bottom, spacing: 25) {
                VStack {
                    Text(".")
                        .fontWeight(.bold)
                        .foregroundColor(Color("primary"))
                    Text("Indonesia")
                        .fontWeight(.bold)
                        .foregroundColor(Color("primary"))
                }
                VStack {
                    Text("Thailand")
                        .fontWeight(.bold)
                        .foregroundColor(Color("secondary"))
                }
            }.padding(.horizontal, 20)
        }
    }
}

struct CardContainer: View {
    var body: some View {
            GeometryReader {geo in
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        CardV(geo: geo)
                        CardV(geo: geo)
                        CardV(geo: geo)
                    }
                }
            }
            .padding(.vertical)
            .frame( height: 360)
    }
}

struct CardV: View {
    var geo: GeometryProxy
    init(geo: GeometryProxy) {
        self.geo = geo
    }
    var body: some View {
        VStack {
            HStack {
                ZStack(alignment: .top) {
                    Rectangle()
                        .frame(width: geo.size.width / 1.2, height: 250)
                        .opacity(0)
                        .background {
                            Image("beach")
                                .resizable()
                                .cornerRadius(30)
                        }
                    HStack {
                        Spacer()
                        Text("4.7")
                            .padding(.all, 20)
                            .foregroundColor(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.white, lineWidth: 4)
                                    .opacity(0.5)
                            }
                    }
                    .padding(.top)
                    .padding(.horizontal)
                }
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("Island")
                        .fontWeight(.black)
                        .foregroundColor(Color("secondary"))
                    Text("Hotels")
                        .font(.system(size: 13))
                        .foregroundColor(.secondary)
                    
                }
                Spacer()
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .foregroundColor(Color("secondary"))
                
            }
            .padding(.all, 20)
        }
        .background(.white)
        .cornerRadius(30)
    }
}

struct LittleCard: View {
    let size: CGFloat = 70
    var body: some View {
        HStack {
            Image("beach")
                .resizable()
                .frame(width: size, height: size)
                .clipped()
                .cornerRadius(5)
            VStack(spacing: 10) {
                Text("Bengund")
                    .fontWeight(.bold)
                Text("10 minutes")
                    .font(.system(size: 12))
                    .foregroundColor(Color("secondary"))
            }
            .padding(.all, 4)
        }
        .background(Color("whiteApp"))
        .cornerRadius(5)
    }
}

struct NavigationBttom: View {
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "safari")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "star")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.vertical, 30)
            .background(Color("primary"))
            .cornerRadius(43)
        }.padding(.horizontal, 20)
    }
}
