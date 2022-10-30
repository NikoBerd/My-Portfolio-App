//
//  ContentView.swift
//  NikoCard
//
//  Created by Niko on 30.10.22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      LinearGradient(colors: [.cyan, .blue],
                             startPoint: .top,
                             endPoint: .center)
      //Color(red: 0.44, green: 0.63, blue: 1.00, opacity: 1.00)
        .edgesIgnoringSafeArea(.all)
      VStack {

        //my profile image
        Image("IMG-01")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 130,height: 150)
          .clipShape(Circle())
          .overlay(
            Circle().stroke(Color.white, lineWidth: 5)
          )
        //name - title
        Text("Niko Berdzenishvili")
          .font(Font.custom("RobotoSlab-Regular", size: 39))
          .fixedSize()
          .bold()
          .foregroundColor(.white)
        //profession subtitle
        Text("iOS Developer")
          .foregroundColor(.white)
          .font(Font.custom("RobotoSlab-Regular", size: 25))
        //divide the top content from the bottom in this case
        Divider()
        InfoView(text: "+995 555 210 220", imageName: "phone.fill")
        InfoView(text: "nikolozisia@gmail.com", imageName: "envelope.fill")
        //github link
        RoundedRectangle(cornerRadius: 25)
          .fill(.white.shadow(.drop(color: .black, radius: 2)))
          .frame(width: 350,height:45)
          .overlay(
            HStack{
              Image("github-01")
                .resizable()
                .frame(width: 32,height: 32)
              Text("github.com/NikoBerd")
            }
          )
        //linkedin
          .padding(.bottom, 10)
        RoundedRectangle(cornerRadius: 25)
          //.fill(.white)
          .fill(.white.shadow(.drop(color: .black, radius: 2)))
          .frame(width: 350,height:45)
          .overlay(
            HStack{
              Image("linkedin")
                .resizable()
                .frame(width: 20,height: 20)
              Text("linkedin.com/in/niko-berd/")
            }
          )

        Divider()


      }
    }
  }


  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
  }
}

