//
//  AlbumView.swift
//  SpotifyClone
//
//  Created by Elliot Knight on 07/02/2022.
//

import SwiftUI

struct AlbumView: View {
    @State private var isPlaying = false
    
    var checkBox: Image {
        Image(systemName: isPlaying ? "plus" : "play.fill")
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                VStack {
                    AlbumCoverCell()
                    Text("The Doors")
                        .padding(.top, 7)
                        .padding(.bottom, 1)
                        .font(.title2.bold())
                    Text("The Doors")
                        .font(.title3.bold())
                        .foregroundColor(.pink)
                        .padding(.bottom, 1)
                    Text("Rock • 1967")
                        .font(.caption.bold())
                        .foregroundColor(.secondary)
                    HStack {
                        Button(action: {
                            self.isPlaying.toggle()
                        } , label: { Label(isPlaying ? "Pause" : "Lire", systemImage: isPlaying ? "pause.fill" : "play.fill")
                        })
                            .buttonStyle()
                        
                        Spacer()
                        Button(action: {
                            
                        } , label: { Label("Aléatoire", systemImage: "shuffle")
                            
                        })
                            .buttonStyle()
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 8)
                }
                VStack {
                    ForEach(musics) { music in
                        VStack {
                            HStack {
                                Text(String(music.musicNumber))
                                    .foregroundColor(.secondary)
                                Text(music.musicName)
                                Spacer()
                                Image(systemName: "ellipsis")
                            }
                            Divider()
                        }
                        .padding(.vertical, 4)
                        .padding(.horizontal)
                    }
                }
                
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                        } label: {
                            ButtonLabel(image: "plus")
                        }
                        
                        Button {
                        } label: {
                            Image(systemName: "ellipsis")
                                .padding(12.5)
                                .font(.callout.bold())
                                .foregroundColor(.pink)
                                .background(BackgroundButtonItem())
                        }
                    }
                }
                
            }
            
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Group {
                AlbumView()
                    .preferredColorScheme(.dark)
            }
        }
    }
}


/*
 struct ButtonView: View {
 var image: String
 var title: String
 var isPlaying = false
 var body: some View {
 Button(action: {
 } , label: { Label("Lire", systemImage: image)})
 .foregroundColor(Color.pink)
 .font(.title3)
 .frame(width: 160, height: 50)
 .background(CustomColor.myColor)
 .cornerRadius(12)
 
 }
 }
 */
struct CustomColor {
    static let myColor = Color("ButtonColor")
}


struct ButtonLabel: View {
    var image: String
    var body: some View {
        Image(systemName: image)
            .padding(5)
            .font(.callout.bold())
            .foregroundColor(.pink)
            .background(BackgroundButtonItem())
    }
}


struct ButtonStyling: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.pink)
            .font(.title3)
            .frame(width: 170, height: 50)
            .background(CustomColor.myColor)
            .cornerRadius(12)
    }
}

extension View {
    func buttonStyle() -> some View {
        modifier(ButtonStyling())
    }
}
