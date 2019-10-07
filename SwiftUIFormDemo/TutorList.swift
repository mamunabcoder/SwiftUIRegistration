//
//  TutorList.swift
//  SwiftUIFormDemo
//
//  Created by Mamun on 22/9/19.
//  Copyright © 2019 Appinstitute. All rights reserved.
//

import SwiftUI

struct TutorList: View {
    @State var navigationBarBackButtonHidden = true
    var body: some View {
        List {
                Text("Mamun")
                Text("Mamun")
                Text("Mamun")
                Text("Mamun")
        }
        .padding()
        .navigationBarTitle(Text("Tutor"), displayMode: .automatic)
    }
}

#if DEBUG
struct TutorList_Previews: PreviewProvider {
    static var previews: some View {
        TutorList()
    }
}
#endif
