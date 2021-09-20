//
//  ItemList.swift
//  EVA01-IOS
//
//  Created by DEV EDUAR on 9/20/21.
//

import SwiftUI

struct ItemList: View {
    
    var listaSities: Sities
    
    var body: some View {
        HStack {
            Text( "- " + listaSities.name)
                .padding()
            Spacer()
        }
    }
}


struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList(
            listaSities: Sities(
                id: 1, name: "Universidad", description: "universidad de el salvador", longitud: -12.366, latitue: -12.11212121
            )
        )
    }
}
