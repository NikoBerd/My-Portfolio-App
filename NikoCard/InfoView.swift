//
//  InfoView.swift
//  NikoCard
//
//  Created by Niko on 30.10.22.
//

import SwiftUI

struct InfoView: View {

  let text: String
  let imageName: String

  var body: some View {
    RoundedRectangle(cornerRadius: 25)
    //filling the rectangle with a color
      .fill(.white.shadow(.drop(color: .black, radius: 2)))
      .frame(width: 350,height: 45)
    //adding horizontal stack for phone icon + number
      .overlay(
        HStack {
          Image(systemName: imageName)
            .foregroundColor(.green)
          Text(text)

        }).padding(.bottom, 10)

  }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
    }
}
