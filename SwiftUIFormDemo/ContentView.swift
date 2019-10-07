//
//  ContentView.swift
//  SwiftUIFormDemo
//
//  Created by Mamun on 22/9/19.
//  Copyright © 2019 Appinstitute. All rights reserved.
//  https://www.appcoda.com/swiftui-first-look/
//  https://github.com/gualtierofrigerio/SwiftUINavigationExample/blob/master/SwiftUINavigationExample/ContentView.swift
//  https://www.appcoda.com/swiftui-form-ui/
//  https://github.com/appcoda/SwiftUIDemo
//  https://www.appcoda.com/swiftui-form-ui/

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
                   List {
        
                       Image("001")
                           .resizable()
                           .scaledToFill()
                           .frame(height: 300)
                           .clipped()
                           .listRowInsets(EdgeInsets())
        
                       VStack(alignment: .leading) {
                           LabelTextField(LabelText: "NAME", placeHolder: "Fill in the restaurant name")
                           LabelTextField(LabelText: "ADDRESS", placeHolder: "Fill in the restaurant address")
                           LabelTextField(LabelText: "PHONE", placeHolder: "Fill in the restaurant phone")
                           LabelTextField(LabelText: "DESCRIPTION", placeHolder: "Fill in the restaurant description")
        
                          SaveButton().padding(.top, 20)
                       }
                       .padding(.top, 20)
                       .listRowInsets(EdgeInsets())
                   }
                   .navigationBarTitle(Text("New Restaurant"))
                   .navigationBarItems(trailing:
                       NavigationLink(destination: TutorList()) {
                           Text("Next")
                       }
                   )
               }


    }
}

struct LabelTextField : View {
    var LabelText: String
    var placeHolder: String
    
    var body : some View {
        VStack(alignment: .leading) {
            Text(LabelText).font(.headline)
            TextField(placeHolder, text: .constant(""))
                .padding(.all)
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
                       .cornerRadius(5)
            //.border(Color.white, width: 1)
            //.textFieldStyle(RoundedBorderTextFieldStyle())
            //.mask(RoundedRectangle(cornerRadius: 5.0))
            //.clipped(antialiased: true)
        }
        .padding(.horizontal, 16)
    }
}

struct SaveButton : View {
    var body: some View {
         Button(action: {
            
         }) {
                        HStack {
                                      Spacer()
                                      Text("Save")
                                        .font(.headline)
                                        .foregroundColor(Color.white)
                                      Spacer()
                                  }
                   }
        .padding(.vertical, 10.0)
        .background(Color.red)
        .cornerRadius(4)
        .padding(.horizontal, 50)    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().previewLayout(.fixed(width: 375, height: 1000))
            SaveButton().previewLayout(.sizeThatFits)
        }
    }
}
#endif
